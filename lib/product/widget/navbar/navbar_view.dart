import 'package:flutter/material.dart';
class NavItemView extends StatelessWidget {
  const NavItemView({super.key, required this.text, required this.icon, required this.onpressed});
  final String text;
  final IconData icon;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
        onpressed();
    }, child:
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 24,
          color: const Color(0xFFFFFFFF),
        ),
        SizedBox(height: 3),
        Text(
         text,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ],
    )
    );
  }
}
