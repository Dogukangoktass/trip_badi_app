import 'package:flutter/material.dart';
import 'package:trip_badi_app/product/utility/constants/light_theme_colors.dart';
import 'package:trip_badi_app/screens/login/login_screen.dart';
import 'package:trip_badi_app/screens/register/register_strings.dart';

import '../../product/widget/button/button_view.dart';
import '../../product/widget/text/text_view.dart';
import '../../product/widget/textfield/text_field.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
         // padding: registerPadding().horizontalPadding,
         padding: EdgeInsets.only(left:20, top: 60, right: 20),
          child: ListView(
            children: [
              Padding(
                padding:registerPadding().topPadding50,
                child: Center(child: TextView(textColor: LightThemeColor().textColor, textSize: 20, textFontWeight: FontWeight.w900, text: RegisterString.invite, textAlign: TextAlign.center)),
              ),

              Padding(
                padding:  registerPadding().topPadding50,
                child: TextFieldView(keyboardType: TextInputType.name, hintText: RegisterString.firstName, obscuringCharacter: " ",  ),
              ),
              Padding(
                padding: registerPadding().topPadding,
                child: TextFieldView(keyboardType: TextInputType.name, hintText: RegisterString.lastName, obscuringCharacter: " ",  ),
              ),
              Padding(
                padding: registerPadding().topPadding,
                child: TextFieldView(keyboardType: TextInputType.datetime, hintText: RegisterString.birthday, obscuringCharacter: " ",  ),
              ),
              Padding(
                padding: registerPadding().topPadding,
                child: TextFieldView(keyboardType: TextInputType.emailAddress, hintText: RegisterString.emailaddress, obscuringCharacter: " ",  ),
              ),
              Padding(
                padding:registerPadding().topPadding,
                child: TextFieldView(keyboardType: TextInputType.name, hintText: RegisterString.username, obscuringCharacter: " ",  ),
              ),
              Padding(
                padding:registerPadding().topPadding,
                child: TextFieldView(keyboardType: TextInputType.visiblePassword, hintText: RegisterString.password, obscuringCharacter: "*",  ),
              ),

              Padding(
                padding:registerPadding().topPadding50,
                child: ButtonView(text: RegisterString.register, height: 55, buttonWidth: 400,
                onpressed: (){},
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Row(children: [
                  Spacer(),
                  TextView(text:RegisterString.haveaAccount, textSize: 16, textFontWeight: FontWeight.normal, textColor: LightThemeColor().textColor,textAlign: TextAlign.center),
                  TextButton(onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginView()),
                  ), child:
                  TextView(text: RegisterString.login, textSize: 16, textFontWeight: FontWeight.w900, textColor: LightThemeColor().blue,textAlign: TextAlign.center),
                  )
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class registerPadding{
  final EdgeInsets topPadding=EdgeInsets.only(top: 10);
  final EdgeInsets topPadding50=EdgeInsets.only(top: 50);
  final EdgeInsets horizontalPadding=EdgeInsets.symmetric(horizontal: 20);
}