import 'package:flutter/material.dart';
import 'package:trip_badi_app/product/utility/constants/light_theme_colors.dart';
import 'package:trip_badi_app/screens/splash/splash_screen_string.dart';

import '../../product/utility/constants/image_path.dart';
import '../../product/widget/button/button_view.dart';
import '../../product/widget/text/text_view.dart';
import '../login/login_screen.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 200),
                child: Center(child: Image.asset(ImagePath().splashImg))),

            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextView(textColor: LightThemeColor().textColor, textFontWeight: FontWeight.bold, textSize: 18, text:SplashString.splashTitle, textAlign: TextAlign.center,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: TextView(textColor: LightThemeColor().textColor, textFontWeight: FontWeight.normal, textSize: 16, text:SplashString.splashText, textAlign: TextAlign.center),

            ),

            Padding(
              padding: const EdgeInsets.only(top:50.0),
              child: ButtonView(
                  onpressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginView()),
                  ),
              text: SplashString.splashButton, height: 55, buttonWidth: 320),
            )
          ],
        ),
      ),
    );
  }
}
