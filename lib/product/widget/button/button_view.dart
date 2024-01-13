import 'package:flutter/material.dart';


class ButtonView extends StatelessWidget {
  const ButtonView({super.key, required this.buttonWidth, required this.height, required this.text, required this.onpressed});
  final double buttonWidth;
  final double height;
  final String text;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
        ),
        onPressed: () {
          onpressed();
        },
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}


