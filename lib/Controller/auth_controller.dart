import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:my_wish_list/Screen/home_screen.dart';
import 'package:my_wish_list/Screen/sign_in_screen.dart';
import 'package:my_wish_list/Screen/welcome_screen.dart';

class FirebaseController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;

  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
  static final FacebookLogin facebookSignIn = new FacebookLogin();
  Rx<User> _firebaseUser = Rx<User>();

  String get user => _firebaseUser.value?.email;
  String get imageurl => _firebaseUser.value?.photoURL;

  @override
  void onInit() {
    super.onInit();
    _firebaseUser.bindStream(_auth.authStateChanges());

    print(" Auth Change :   ${_auth.currentUser}");
  }

  // function to createuser, login and sign out user

  void createUser(String firstname, String email, String password) async {
    CollectionReference reference =
        FirebaseFirestore.instance.collection("Users");

    Map<String, String> userdata = {"First Name": firstname, "Email": email};

    await _auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      reference.add(userdata).then((value) => Get.offAll(HomeScreen()));
    }).catchError(
      (onError) =>
          Get.snackbar("Error while creating account ", onError.message),
    );
  }

  void login(String email, String password) async {
    await _auth
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) => Get.offAll(HomeScreen()))
        .catchError(
            (onError) => Get.snackbar("Error while sign in ", onError.message));
  }

  void signout() async {
    await _auth.signOut().then((value) => Get.offAll(WelcomeScreen()));
  }

  void sendpasswordresetemail(String email) async {
    await _auth.sendPasswordResetEmail(email: email).then((value) {
      Get.offAll(SignInScreen());
      Get.snackbar("Password Reset email link is been sent", "Success");
    }).catchError(
        (onError) => Get.snackbar("Error In Email Reset", onError.message));
  }

  Future<User> googlesignIn() async {
    final googleSignIn = GoogleSignIn();
    final googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;
      if (googleAuth.idToken != null) {
        final userCredential = await _auth
            .signInWithCredential(GoogleAuthProvider.credential(
              idToken: googleAuth.idToken,
              accessToken: googleAuth.accessToken,
            ))
            .then((value) => Get.offAll(HomeScreen()));
        return userCredential.user;
      } else {
        throw FirebaseAuthException(
          code: 'ERROR_MISSING_GOOGLE_ID_TOKEN',
          message: 'Missing Google ID Token',
        );
      }
    } else {
      throw FirebaseAuthException(
        code: 'ERROR_ABORTED_BY_USER',
        message: 'Sign in aborted by user',
      );
    }
  }

  Future<void> googlesignOut() async {
    await _auth.signOut().then((value) => Get.offAll(WelcomeScreen()));
  }

  Future<Null> fbLogin() async {
    final FacebookLoginResult result =
        await facebookSignIn.logIn(customPermissions: ['email']);

    switch (result.status) {
      case FacebookLoginStatus.success:
        final FacebookAccessToken accessToken = result.accessToken;
        print('''
         Logged in!
         
         Token: ${accessToken.token}
         User id: ${accessToken.userId}
         Expires: ${accessToken.expires}
         Permissions: ${accessToken.permissions}
         Declined permissions: ${accessToken.declinedPermissions}
         ''');
        break;
      case FacebookLoginStatus.cancel:
        print('Login cancelled by the user.');
        break;
      case FacebookLoginStatus.error:
        print('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.error}');
        break;
    }
  }
}
