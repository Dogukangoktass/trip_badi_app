import 'package:flutter/material.dart';
import 'package:trip_badi_app/product/utility/constants/light_theme_colors.dart';

import '../../utility/constants/image_path.dart';
import '../button/button_view.dart';
class postCard extends StatelessWidget {
  const postCard({
    super.key, required this.username, required this.location, required this.likeCount, required this.onpressed, required this.imagePath, required this.userimagePath
  });
  final String username;
  final String location;
  final String likeCount;
  final Function onpressed;
  final String userimagePath;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      /*decoration: const BoxDecoration(
          boxShadow:  [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 50.0
            )
          ]
      ),*/
      child: Padding(
        padding: const EdgeInsets.only(top:10.0),
        child: Card(
          color: LightThemeColor().white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),// kenarlarını yuvarlar stadium görüntüsü verir
          child: SizedBox(
            height: 300,width: 500,
            child: Column(
              children: [
                Container(
                  height: 40,
                  child: Row(
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(userimagePath, width: 30,),
                            ),
                            _Text(text:username,)
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
                              _Text(text: location,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  child: Image.asset(imagePath),
                ),
                Container(
                  height: 40,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite , color: Colors.red),
                      ),
                      _Text(text: likeCount+" beğenme"),
                      Spacer(),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ButtonView(onpressed: () {
                            onpressed();
                          },height: 50, text: "Katıl", buttonWidth: 120,))]))])),
        ),
      ),
    );
  }
}


class _Text extends StatelessWidget {
  const _Text({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w500
    ),);
  }
}
