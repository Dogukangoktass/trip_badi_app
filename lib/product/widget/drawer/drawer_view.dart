import 'package:flutter/material.dart';

import '../../../screens/account/account_screen.dart';
import '../../../screens/appsetting/appsetting_screen.dart';
import '../../../screens/points/point_screen.dart';


class DrawerView extends StatelessWidget {
  const DrawerView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 60,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text('TripBadi', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),),
            ),
          ),
          ListTile(
            leading: Icon( Icons.account_circle_outlined),
            title: const Text('Hesap'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountScreen()),
              );

            },
          ),
          ListTile(
            leading: Icon( Icons.star_border_purple500_sharp),
            title: const Text('Puanlamalar'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PointView()),
              );
            },
          ),

          ListTile(
            leading: Icon( Icons.star_border_purple500_sharp),
            title: const Text('Uygulama Hakkında'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AppSetting()),
              );
            },
          ),
        ],
      ),
    );
  }
}
