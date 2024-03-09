import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/controller/navBar.dart';

class navBarPage extends StatelessWidget {
  const navBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    navBar nav = Get.find();
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: appTheme.bgScaffoldColor,
          buttonBackgroundColor: appTheme.primaryColor,
          color: appTheme.primaryColor,
          animationDuration: const Duration(microseconds: 300),
          height: 50,
          items: [
            Icon(
              Icons.settings,
              size: 26,
              color:appTheme.secondColor,
            ),
            Icon(
              Icons.home,
              size: 26,
              color: appTheme.secondColor,
            ),
            Icon(
              Icons.create_new_folder_rounded,
              size: 26,
              color: appTheme.secondColor,
            ),
          ],
          onTap: (index) {
            nav.u(index);
          } 
          ),
      body: GetBuilder<navBar>(builder: (nav) =>
        nav.currentPage()),
    );
  }
}
