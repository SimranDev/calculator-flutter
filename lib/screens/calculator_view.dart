import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator/common/customWidgets.dart';

class CalculatorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const bgColor = const Color(0xFF2B2B2B);
    const textColor = const Color(0xFFC1EFD9);
    const calcScreenColor = const Color(0xFF3B3B3B);

    return Material(
      color: bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 24),
          // ROW 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  print("Drawer Button Pressed...");
                },
                icon: Icon(Icons.menu),
                color: textColor,
              ),
              Text(
                "Calculator",
                style: TextStyle(color: textColor),
              ),
              IconButton(
                onPressed: () {
                  print("Theme Button Pressed...");
                },
                icon: Icon(Icons.wb_sunny),
                color: textColor,
              ),
            ],
          ),
          //CONTAINER 2
          Expanded(
            child: Container(
              margin: const EdgeInsets.fromLTRB(6, 6, 6, 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: calcScreenColor),
            ),
          ),
          //COLUMN AC, <X, %, /
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CustomBtnWithTxt("AC"),
                  CustomBtnWithTxt("7"),
                  CustomBtnWithTxt("4"),
                  CustomBtnWithTxt("1"),
                  CustomBtnWithTxt("."),
                ],
              ),
              //COLUMN AC, <X, %, /
              Column(
                children: [
                  CustomBtnWithIcon(Icons.backspace),
                  CustomBtnWithTxt("8"),
                  CustomBtnWithTxt("5"),
                  CustomBtnWithTxt("2"),
                  CustomBtnWithTxt("0"),
                ],
              ),
              //COLUMN AC, <X, %, /
              Column(
                children: [
                  CustomBtnWithTxt("%"),
                  CustomBtnWithTxt("9"),
                  CustomBtnWithTxt("6"),
                  CustomBtnWithTxt("3"),
                  CustomBtnWithTxt("+"),
                ],
              ),
              //COLUMN AC, <X, %, /
              Column(
                children: [
                  CustomBtnWithTxt("/"),
                  CustomBtnWithTxt("x"),
                  CustomBtnWithTxt("-"),
                  LargeBtn("=")
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
