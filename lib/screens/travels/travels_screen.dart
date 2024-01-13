import 'package:flutter/material.dart';

import '../../product/utility/constants/image_path.dart';

class TravelsView extends StatefulWidget {
  const TravelsView({super.key});

  @override
  State<TravelsView> createState() => _TravelsViewState();
}

class _TravelsViewState extends State<TravelsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gezilerim"),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Image.asset(ImagePath().travels, height: 300),
        ),
        Padding(
          padding: const EdgeInsets.only(top:28.0),
          child: Center(child: Text("Gelecek gezi planların burada görünecek.", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ))))]),
    );
  }
}
