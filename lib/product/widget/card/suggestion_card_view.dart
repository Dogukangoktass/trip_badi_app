import 'package:flutter/material.dart';

import '../../utility/constants/image_path.dart';
import '../../utility/constants/light_theme_colors.dart';
import '../button/button_view.dart';

class suggestion_card extends StatelessWidget {
  const suggestion_card({
    super.key, required this.matchOverall, required this.imagePath, required this.onpressed, required this.text,
  });

  final String matchOverall;
  final String imagePath;
  final Function onpressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          //set border radius more than 50% of height and width to make circle
        ),
        color: LightThemeColor().white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(imagePath, height: 220, width: 200,fit: BoxFit.fitHeight)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(

                child: Column(
                  children: [
                    Text(matchOverall+" Eşleşme", style: TextStyle(
                        color: LightThemeColor().green
                    ),),
                    Spacer(),
                    Text(text, style: TextStyle(
                      color: LightThemeColor().textColor,
                      overflow: TextOverflow.ellipsis,
                    )),
                    Spacer(),
                    ButtonView(buttonWidth: 170, height: 40, text: "Plan Oluştur", onpressed: (){
                      onpressed();
                    })
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
