import 'package:get/get.dart';
import 'package:test2/model/myData.dart';

class carDetailsController extends GetxController {
  late int index;
  List<double> total = [0.0, 0.0, 0.0, 0.0, 0.0];
  @override
  void onInit() {
    super.onInit();
    index = Get.arguments;
  }

  data d = data();
  String GetModel() {
    return "${d.dat[index].Model}";
  }

  void ChangeTotal(index) {
    total[index] += double.parse(d.dat[index].Price);
    update();
  }

  /* void addToCart() {
    bool Found = true;
    if (cartData().cart.contains(cartDetails(
        Model: d.dat[index].Model,
        lanchYear: d.dat[index].lanchYear,
        Company: d.dat[index].Company,
        Price: d.dat[index].Price,
        total: total))) {
      print("iff");
      total += double.parse(d.dat[index].Price);
      int i = cartData().cart.indexOf(cartDetails(
          Model: d.dat[index].Model,
          lanchYear: d.dat[index].lanchYear,
          Company: d.dat[index].Company,
          Price: d.dat[index].Price,
          total: total));
      cartData().cart[i].total =cartData().cart[i].total! + double.parse(d.dat[index].Price);
      update();
    } else {
      print("yess");
      cartData().cart.add(cartDetails(
            Model: d.dat[index].Model,
            lanchYear: d.dat[index].lanchYear,
            Company: d.dat[index].Company,
            Price: d.dat[index].Price,
            total: double.parse(d.dat[index].Price),
          ));
      update();
    }
  }*/

  String GetLaunchYear() {
    return "${d.dat[index].lanchYear}";
  }

  String GetCompany() {
    return "${d.dat[index].Company}";
  }

  String GetPrice() {
    return "${d.dat[index].Price}";
  }

  String Getcd() {
    return "${d.dat[index].CD}";
  }

  String GetCarEngine() {
    return "${d.dat[index].CarEngine}";
  }

  String GetHorsepower() {
    return "${d.dat[index].Horsepower}";
  }

  String GetBattery() {
    return "${d.dat[index].Battery}";
  }

  List<dynamic> GetImg() {
    return d.dat[index].img;
  }
}
