import 'package:flutter/material.dart';
import 'package:test2/controller/constant.dart';

class customRow extends StatelessWidget {
  const customRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
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
              hintText: "search",
              prefix: Icon(Icons.search),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(
                color: appTheme.secondColor,
              )),
            ),
          ),
        ),
       // Expanded(child: SizedBox()),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.filter_alt),
          color: appTheme.secondColor,
        ),
      ],
    );
  }
}
