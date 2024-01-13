import 'package:flutter/material.dart';

import '../../utility/constants/light_theme_colors.dart';



class TitleAndCardView extends StatelessWidget {
  const TitleAndCardView({super.key, required this.title, required this.text});
final String title;
final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text(title, style: TextStyle(
                  color: LightThemeColor().textGrey,  fontSize: 16,  fontWeight: FontWeight.bold)),
              Spacer(),
              Icon(Icons.more_vert, color: LightThemeColor().blue)
            ],
          ),
        ),
        Container(
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Card(
              color:  LightThemeColor().white,
              child: Row(
                children: [
                  //Icon(Icons.verified, color: LightThemeColor().blue),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(text, style: TextStyle(
                          color:LightThemeColor().textGrey ,
                            fontSize: 16,  fontWeight: FontWeight.w500)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
