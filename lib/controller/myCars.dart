import 'package:flutter/material.dart';

class myCars {
  List<AssetImage> img = [];
  Widget? imgListView ;
  String Model = "";
  String lanchYear = "";
  String Company = "";
  String Price = "";
  String? CD = "";
  String? CarEngine = "";
  String? Horsepower = "";
  String? Battery = "";
  myCars(
      { required this.img,
      required this.Model,
      required this.lanchYear,
      required this.Company,
      required this.Price,
       this.CD,
       this.CarEngine,
       this.Horsepower,
       this.Battery,
      this.imgListView
      }
      );
}
