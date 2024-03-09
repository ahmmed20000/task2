import 'package:get/get.dart';
import 'package:test2/controller/carDetailsController.dart';

class carDetailsBinding implements Bindings {
  @override
  void dependencies() {
   Get.put(carDetailsController() , permanent: true);
  }
}
