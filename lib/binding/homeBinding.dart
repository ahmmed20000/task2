 import 'package:get/get.dart';
import 'package:test2/controller/homeController.dart';

class homeBinding implements Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => homeController());
  }
  
}