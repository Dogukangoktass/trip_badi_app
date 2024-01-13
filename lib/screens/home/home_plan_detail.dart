import 'package:flutter/material.dart';
import 'package:trip_badi_app/product/utility/constants/light_theme_colors.dart';
import 'package:trip_badi_app/screens/home/home_strings.dart';

import '../../product/utility/constants/image_path.dart';
import '../../product/widget/button/button_view.dart';
import '../../product/widget/card/post_card.dart';
import '../../product/widget/card/users_card.dart';

class HomePlanDetail extends StatefulWidget {
  const HomePlanDetail({super.key});

  @override
  State<HomePlanDetail> createState() => _HomePlanDetailState();
}

class _HomePlanDetailState extends State<HomePlanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: ListView(
        children: [
      Row(
      children: [
        Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(ImagePath().profilImg, width: 50,),
              ),
              _Text(text:"username", fontWeight: FontWeight.w600)
            ],
          ),
        ),
        Spacer(),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined, color: Colors.red,),
                _Text(text: "Istanbul / Turkey", fontWeight: FontWeight.w600)
              ],
            ),
          ),
        ),
    ],
    ),


          Container(
            height: 220,
            child: Image.asset(ImagePath().istanbulImg),
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                _Text(text:"Gezi Planı", fontWeight: FontWeight.w600,),
                Spacer(),
                _Text(text:"16.11.2023 - 21.11.2023", fontWeight: FontWeight.w600),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: _Text(text:"Lorem Ipsum is simply dummy text of the printing \nand typesetting industry. Lorem Ipsum has been\nthe industry's standard dummy text ever since the\n1500s, when an unknown printer took a galley of type\nand scrambled it to make a type specimen book.",
            fontWeight: FontWeight.w300,),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: _Text(text:"Katılımcılar",
              fontWeight: FontWeight.w600,),
          ),

          usersCard(username: "kullanıcı1", userimagePath: ImagePath().profil2Img,),
          usersCard(username: "kullanıcı2", userimagePath: ImagePath().profil2Img,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: Row(
                children: [
                  ButtonView(onpressed: () {},height: 50, text: "Katıl", buttonWidth: 170,),
                  Spacer(),
                  ButtonView(onpressed: () {},height: 50, text: "Kaydet", buttonWidth: 170,),

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}



class _Text extends StatelessWidget {
  const _Text({
    super.key, required this.text, required this.fontWeight,
  });
  final String text;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: fontWeight
    ),);
  }
}