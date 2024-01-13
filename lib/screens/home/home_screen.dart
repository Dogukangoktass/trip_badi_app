import 'package:flutter/material.dart';
import 'package:trip_badi_app/product/utility/constants/light_theme_colors.dart';
import 'package:trip_badi_app/screens/login/login_screen.dart';
import 'package:trip_badi_app/screens/profile/profile_screen.dart';

import '../../product/utility/constants/image_path.dart';
import '../../product/widget/Text/text_view.dart';
import '../../product/widget/button/button_view.dart';
import '../../product/widget/card/post_card.dart';
import '../../product/widget/textfield/text_field.dart';
import 'home_plan_detail.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightThemeColor().white,
      appBar: AppBar(
        elevation: 0,
        title: Text("TripBadi", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,
            fontSize: 22),),
        backgroundColor: LightThemeColor().white,
        automaticallyImplyLeading: false, // Geri butonunu kaldırır.
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:20.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            children: [
              postCard(
                onpressed:  () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePlanDetail()),)
                ,likeCount: "34",location: "İstanbul, Turkey", username: "dogukangoktas",imagePath: ImagePath().istanbulImg, userimagePath: ImagePath().profilImg,),
              postCard(
                  onpressed:  () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePlanDetail()),)
                  ,likeCount: "36",location: "Kars, Turkey", username: "username",imagePath: ImagePath().karsImg, userimagePath: ImagePath().profilImg),

              postCard(
                  onpressed:  () => Navigator.push(context, MaterialPageRoute(builder: (context) => HomePlanDetail()),)
                  ,likeCount: "75",location: "Bartın, Turkey", username: "username",imagePath: ImagePath().bartinImg, userimagePath: ImagePath().profilImg),
            ],
          ),
        ),
      ),

    );
  }
}



