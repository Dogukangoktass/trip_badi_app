import 'package:flutter/material.dart';

import '../../product/utility/constants/image_path.dart';
import '../../product/utility/constants/light_theme_colors.dart';
import '../../product/widget/drawer/drawer_view.dart';
import '../home/home_nav_screen.dart';
import '../profile/profile_saved_plan_screen.dart';
import '../profile/profile_screen.dart';
import '../profile/profile_suggestion_screen.dart';
import 'getpoint_screen.dart';
import 'givepoint_screen.dart';

class PointView extends StatefulWidget {
  const PointView({super.key});

  @override
  State<PointView> createState() => _PointViewState();
}

class _PointViewState extends State<PointView> with TickerProviderStateMixin{
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
        title: Center(child: Text("Puanlamalar")),
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
          preferredSize: const Size.fromHeight(60.0),
          child: Column(
            children: [
             TabBar(
                  indicatorColor: LightThemeColor().blue,
                  labelColor: LightThemeColor().textColor,
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                  controller: _tabController,
                  tabs: const <Widget>[
                    Tab(
                      text: "Alınan Puanlar",
                    ),
                    Tab(
                      text: "Verilen Puanlar",
                    ),
                  ],
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
              child: GetPointView(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top:20.0),
            child: Center(
              child: GivePointView(),
            ),
          ),
        ],
      ),
    );
  }
}
