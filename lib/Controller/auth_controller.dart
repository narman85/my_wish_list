import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_wish_list/Controller/user_controller.dart';
import 'package:my_wish_list/Model/user_model.dart';
import 'package:my_wish_list/Screen/home_screen.dart';
import 'package:my_wish_list/Screen/sign_in_screen.dart';
import 'package:my_wish_list/Screen/welcome_screen.dart';

import 'database.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
  FacebookLogin facebookSignIn = FacebookLogin();

  Rx<User> _firebaseUser = Rx<User>();

  User get user => _firebaseUser.value;
  User get displayName => _firebaseUser.value;

  @override
  onInit() {
    super.onInit();
    _firebaseUser.bindStream(_auth.authStateChanges());
  }

  void createUser(String name, String email, String password) async {
    try {
      UserCredential _authResult = await _auth
          .createUserWithEmailAndPassword(
              email: email.trim(), password: password)
          .then((value) => Get.offAll(HomeScreen()));
      //create user in database.dart
      UserModel _user = UserModel(
        id: _authResult.user.uid,
        name: name,
        email: _authResult.user.email,
      );
      if (await Database().createNewUser(_user)) {
        Get.find<UserController>().user = _user;
        Get.back();
      }
    } catch (e) {
      Get.snackbar(
        "Error creating Account",
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void login(String email, String password) async {
    try {
      UserCredential _authResult = await _auth
          .signInWithEmailAndPassword(email: email.trim(), password: password)
          .then((value) => Get.offAll(HomeScreen()));
      Get.find<UserController>().user =
          await Database().getUser(_authResult.user.uid);
    } catch (e) {
      Get.snackbar(
        "Error signing in",
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void signOut() async {
    try {
      await _auth.signOut().then((value) => Get.offAll(WelcomeScreen()));
      Get.find<UserController>().clear();
    } catch (e) {
      Get.snackbar(
        "Error signing out",
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void sendpasswordresetemail(String email) async {
    await _auth.sendPasswordResetEmail(email: email).then((value) {
      Get.offAll(SignInScreen());
      Get.snackbar("Password Reset email link is been sent", "Success");
    }).catchError(
        (onError) => Get.snackbar("Error In Email Reset", onError.message));
  }

  void googlesignIn() async {
    final GoogleSignInAccount googleUser = await googleSignIn.signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

    // ignore: unused_local_variable
    final User user = (await _auth
        .signInWithCredential(credential)
        .then((value) => Get.offAll(
              HomeScreen(),
            )));
  }

  void googlesignOut() async {
    await googleSignIn.signOut().then((value) => Get.offAll(WelcomeScreen()));
  }

  Future<User> fbLogin() async {
    final fb = FacebookLogin();
    final response = await fb.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);
    switch (response.status) {
      case FacebookLoginStatus.success:
        final accessToken = response.accessToken;
        final userCredential = await _auth
            .signInWithCredential(
                FacebookAuthProvider.credential(accessToken.token))
            .then((value) => Get.offAll(HomeScreen()));
        return userCredential.user;
      case FacebookLoginStatus.cancel:
        throw FirebaseAuthException(
          code: 'ERROR_ABORTED_BY_USER',
          message: 'Sign in aborted by user',
        );
      case FacebookLoginStatus.error:
        throw FirebaseAuthException(
          code: 'ERROR_FACEBOOK_LOGIN_FAILED',
          message: response.error.developerMessage,
        );
      default:
        throw UnimplementedError();
    }
  }
}
