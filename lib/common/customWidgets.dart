import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const btnColor = const Color (0xFF666666);
const textColor = const Color(0xFFC1EFD9);



class CustomBtnWithTxt extends StatelessWidget {
  String btnText;
  CustomBtnWithTxt(this.btnText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        height: 60,
        color: btnColor,
        child: Text("$btnText", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
        onPressed: () {
          print("$btnText pressed...");
        },
      ),
    );
  }
}

class CustomBtnWithIcon extends StatelessWidget {
  IconData btnIcon;
  CustomBtnWithIcon(this.btnIcon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        height: 60,
        color: btnColor,
        child: Icon(btnIcon, color: Colors.white,),
        onPressed: () {
          print("$btnIcon pressed...");
        },
      ),
    );
  }
}

class LargeBtn extends StatelessWidget {
  String btnText;
  LargeBtn(this.btnText);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        height: 125,
        color: btnColor,
        child: Text("$btnText", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
        onPressed: () {
          print("$btnText pressed...");
        },
      ),
    );
  }
}



