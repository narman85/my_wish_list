import 'package:get/get.dart';

import 'auth_controller.dart';

class InstanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FirebaseController>(() => FirebaseController());
  }
}
