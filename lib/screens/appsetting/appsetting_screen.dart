import 'package:flutter/material.dart';

import '../../product/utility/constants/light_theme_colors.dart';
import '../../product/widget/card/title_and_card_view.dart';
import '../../product/widget/drawer/drawer_view.dart';
import '../home/home_nav_screen.dart';
import '../profile/profile_screen.dart';

class AppSetting extends StatefulWidget {
  const AppSetting({super.key});

  @override
  State<AppSetting> createState() => _AppSettingState();
}

class _AppSettingState extends State<AppSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerView(),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: LightThemeColor().textColor),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
        automaticallyImplyLeading: false,
        title: Center(child: Text("TripBadi Hakkında")),
        actions: [
          Builder(
              builder: (context) {
                return IconButton(onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                    icon: Icon(Icons.menu_rounded, color: LightThemeColor().textColor,));
              }
          ),
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.only(top:15.0),
        child: ListView(
          children: [
            TitleAndCardView(title: "Tercihler", text: "Bildirimler ve iletişim\nŞifre değiştir\nPosta adresi"),
            TitleAndCardView(title: "Uygulama Hakkında", text: "Yardım\nŞartlar ve koşullar\nVeri koruma\nLisanslar"),
          ],
        ),
      ),

    );
  }
}
