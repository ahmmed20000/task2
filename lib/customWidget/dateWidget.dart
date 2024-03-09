import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/controller/constant.dart';
import 'package:test2/controller/filterController.dart';
import 'package:test2/customWidget/text.dart';

class dateWidget extends StatelessWidget {
  dateWidget({super.key, required this.c});
  final filterController c;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 223, 218, 218),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  c.decreaseDate();
                },
                child: const Text(
                  "<",
                  style: TextStyle(
                      fontSize: appTheme.ContentfontSize, color: Colors.black),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              GetBuilder<filterController>(
                  builder: (c) => text(
                        content: "${c.minbDate} - ${c.maxDate}",
                      )),
              SizedBox(
                width: 2,
              ),
              TextButton(
                onPressed: () {
                  c.increaseDate();
                },
                child: const Text(
                  ">",
                  style: TextStyle(
                      color: Colors.black, fontSize: appTheme.ContentfontSize),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: appTheme.secondColor,
              thickness: 2,
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: GetBuilder<filterController>(
                    builder: (c) => Column(
                          children: [
                            text(content: "${c.minbDate}"),
                            const SizedBox(
                              height: 3,
                            ),
                            text(content: "${c.minbDate + 1}"),
                            const SizedBox(
                              height: 3,
                            ),
                            text(content: "${c.minbDate + 2}"),
                            const SizedBox(
                              height: 3,
                            ),
                            text(content: "${c.minbDate + 3}"),
                            const SizedBox(
                              height: 3,
                            ),
                          ],
                        )),
              ),
              Expanded(
                flex: 1,
                child: GetBuilder<filterController>(
                    builder: (c) => Column(
                          children: [
                            text(content: "${c.maxDate - 3}"),
                            const SizedBox(
                              height: 3,
                            ),
                            text(content: "${c.maxDate - 2}"),
                            const SizedBox(
                              height: 3,
                            ),
                            text(content: "${c.maxDate - 1}"),
                            const SizedBox(
                              height: 3,
                            ),
                            text(content: "${c.maxDate}"),
                            const SizedBox(
                              height: 3,
                            ),
                          ],
                        )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
