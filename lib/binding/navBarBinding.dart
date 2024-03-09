import 'package:get/get.dart';
import 'package:test2/controller/navBar.dart';

class navBarBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(navBar());
  }
}
