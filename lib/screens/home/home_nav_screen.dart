import 'package:flutter/material.dart';

import '../message/message_screen.dart';
import '../profile/profile_screen.dart';
import '../travel_plans_create/travel_plan_create_screen.dart';
import '../travels/travels_screen.dart';
import 'home_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0; // Ortadaki ikonun başlangıçtaki index'i

  void changeScreen(int index){
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home, size: 30),
              onPressed: () {
                changeScreen(0);
              },
            ),
            IconButton(
              icon: Icon(Icons.map, size: 30),
              onPressed: () {
                changeScreen(1);
              },
            ),
            SizedBox(width: 56.0), // Boşluk eklemek için SizedBox kullanıyoruz
            IconButton(
              icon: Icon(Icons.message_outlined, size: 30),
              onPressed: () {
                changeScreen(3);
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle_outlined, size: 30),
              onPressed: () {
                changeScreen(4);
              },
            ),
          ],
        ),
        color: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeScreen(2);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 4.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: changeView(_currentIndex),
      ),
    );
  }

   changeView(int index)
  {

    switch (_currentIndex) {
      case 0:
        return HomeView();
        break;
      case 1:
        return TravelsView();
        break;
      case 2:
        return CreateTravelPlain();
        break;
      case 3:
        return MessageView();
        break;
      case 4:
        return ProfileView();
        break;

      default:
        return HomeView();
        break;
  }
  }

  void _onNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      // Gelen index'e göre sayfaları değiştir
      switch (_currentIndex) {
        case 0:
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeView()));
          break;
        case 1:
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => TravelsView()));
          break;
        case 2:
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => CreateTravelPlain()));
          break;
        case 3:
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => MessageView()));
          break;
        case 4:
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => ProfileView()));
          break;

        default:
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeView()));
          break;

      }
    });
  }

}
