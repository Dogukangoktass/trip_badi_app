import 'package:flutter/material.dart';
import 'package:trip_badi_app/screens/profile/profile_saved_plan_screen.dart';
import 'package:trip_badi_app/screens/profile/profile_suggestion_screen.dart';

import '../../product/utility/constants/image_path.dart';
import '../../product/utility/constants/light_theme_colors.dart';
import '../../product/widget/drawer/drawer_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView>with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController= TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerView(),
      appBar: AppBar(
        automaticallyImplyLeading: false, // drawer icin kayan menu icin otomatik icon olusturm

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        //leading: Icon(Icons.chevron_left_rounded, color: LightThemeColor().textColor,),
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
        backgroundColor: LightThemeColor().white,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(200.0),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Image.asset(ImagePath().profilImg),
                  ),
                  Text("Doğukan Göktaş", style: TextStyle(
                      color: LightThemeColor().textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                  ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: TabBar(
                  indicatorColor: LightThemeColor().blue,
                  labelColor: LightThemeColor().textColor,
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                  controller: _tabController,
                  tabs: const <Widget>[
                    Tab(
                      text: "Öneriler",
                    ),
                    Tab(
                      text: "Kaydedilenler",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
      controller: _tabController,
      children: const <Widget>[
        Center(
          child: Padding(
            padding: EdgeInsets.only(top:20.0),
            child: ProfileSuggestionView(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:20.0),
          child: Center(
            child: ProfileSavedPlanView(),
          ),
        ),
      ],
    ),
    );
  }
}
