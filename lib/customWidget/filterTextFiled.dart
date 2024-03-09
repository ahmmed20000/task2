import 'package:flutter/material.dart';
import 'package:test2/controller/constant.dart';

class filterTextFiled extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2)),
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
              borderSide: BorderSide(
            color: appTheme.secondColor,
          )
          ),
        ),
      ),
    );
  }
}
