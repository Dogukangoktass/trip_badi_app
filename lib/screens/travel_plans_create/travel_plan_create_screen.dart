import 'package:flutter/material.dart';

import '../../product/widget/button/button_view.dart';
import '../../product/widget/textfield/text_field.dart';

class CreateTravelPlain extends StatefulWidget {
  const CreateTravelPlain({super.key});

  @override
  State<CreateTravelPlain> createState() => _CreateTravelPlainState();
}

class _CreateTravelPlainState extends State<CreateTravelPlain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:25.0),
            child: Center(child: Text("Gezi Planı Oluştur", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20 ))),
          ),
          Padding(
            padding: const EdgeInsets.only(top : 25.0, right: 20, left: 20),
            child: TextFieldView(hintText: "Plan/Etkinlik oluştur",keyboardType: TextInputType.name,obscuringCharacter: " "),),

          Padding(
            padding: const EdgeInsets.only(top : 10.0, right: 20, left: 20),
            child: TextFieldView(hintText: "Şehir",keyboardType: TextInputType.name,obscuringCharacter: " "),),

    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Padding(
        padding: const EdgeInsets.only(top:10.0),
        child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
            border: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.black),
            borderRadius: BorderRadius.circular(50.0),
            ),
            hintText: "Plan/Etkinlik detayı",)),
      ),
    ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: ButtonView(height: 50,onpressed: (){},text: "Plan Oluştur",buttonWidth: 0,),
            ),
          )

        ],
      ),
    );
  }
}
