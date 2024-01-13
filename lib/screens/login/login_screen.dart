import 'package:flutter/material.dart';
import 'package:trip_badi_app/screens/register/register_screen.dart';

import '../../product/utility/constants/image_path.dart';
import '../../product/utility/constants/light_theme_colors.dart';
import '../../product/widget/button/button_view.dart';
import '../../product/widget/text/text_view.dart';
import '../../product/widget/textfield/text_field.dart';
import '../home/home_screen.dart';
import 'login_strings.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: registerPadding().horizontalPadding,
        child: ListView (
          children: [
            Padding(
              padding:registerPadding().topPadding50,
              child: Center(child: TextView(textColor: LightThemeColor().textColor, textSize: 20,
                  textFontWeight: FontWeight.w900, text: LoginString.signUp, textAlign: TextAlign.center)),
            ),
            Padding(
                padding: EdgeInsets.only(top: 50),
                child: Center(child: Image.asset(ImagePath().loginImg))),
            Padding(
              padding:  registerPadding().topPadding50,
              child: TextFieldView(keyboardType: TextInputType.emailAddress, hintText: LoginString.emailaddress,
                obscuringCharacter: " ",  ),
            ),
            Padding(
              padding: registerPadding().topPadding,
              child: TextFieldView(keyboardType: TextInputType.visiblePassword, hintText: LoginString.password,
                obscuringCharacter: "*",  ),
            ),
            Padding(
              padding:registerPadding().topPadding50,
              child: ButtonView(text: LoginString.signUp, height: 55, buttonWidth: 400,
                onpressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeView()),
            ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:15.0),
              child: Row(children: [
               Spacer(),
                TextView(text:LoginString.haventAccount, textSize: 16, textFontWeight: FontWeight.normal, textColor: LightThemeColor().textColor,textAlign: TextAlign.center),
                TextButton( onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterView()),
                ), child:
                TextView(text: LoginString.register, textSize: 16, textFontWeight: FontWeight.w900, textColor: LightThemeColor().blue,textAlign: TextAlign.center),
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}

class registerPadding{
  final EdgeInsets topPadding=EdgeInsets.only(top: 10);
  final EdgeInsets topPadding50=EdgeInsets.only(top: 60);
  final EdgeInsets horizontalPadding=EdgeInsets.symmetric(horizontal: 20);
}