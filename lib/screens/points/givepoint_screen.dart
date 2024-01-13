import 'package:flutter/material.dart';

import '../../product/utility/constants/image_path.dart';

class GivePointView extends StatefulWidget {
  const GivePointView({super.key});

  @override
  State<GivePointView> createState() => _GivePointViewState();
}

class _GivePointViewState extends State<GivePointView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Image.asset(ImagePath().noPoint, height: 300,),
        ),
        Padding(
          padding: const EdgeInsets.only(top:28.0),
          child: Center(child: Text("Henüz hiç puan vermedin", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),)),
        )

      ],),
    );
  }
}
