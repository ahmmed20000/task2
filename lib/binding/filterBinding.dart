import 'package:get/get.dart';
import 'package:test2/controller/filterController.dart';

class filterBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(filterController(), permanent: true);
  }
}
