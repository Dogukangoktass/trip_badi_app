import 'package:flutter/material.dart';
import 'package:trip_badi_app/product/utility/constants/light_theme_colors.dart';

import '../../utility/constants/image_path.dart';
import '../button/button_view.dart';
class pointCardView extends StatelessWidget {
  const pointCardView({
    super.key, required this.username, required this.userimagePath, required this.text
  });
  final String username;
  final String userimagePath;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: Card(
          color: LightThemeColor().white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),// kenarlarını yuvarlar stadium görüntüsü verir
          child: SizedBox(
            height: 120,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(userimagePath, width: 50,),
                    ),
                    _Text(text:username,),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.star, color: Color(0xffF1C40F),),
                        Icon(Icons.star, color: Color(0xffF1C40F),),
                        Icon(Icons.star, color: Color(0xffF1C40F),),
                        Icon(Icons.star, color: Color(0xffF1C40F),),
                        Icon(Icons.star, color: Color(0xffF1C40F),),
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(text),
                )
              ],
            ),
          ),
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
