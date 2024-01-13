import 'package:flutter/material.dart';

import '../../product/utility/constants/image_path.dart';
import '../../product/widget/card/points_card.dart';

class GetPointView extends StatefulWidget {
  const GetPointView({super.key});

  @override
  State<GetPointView> createState() => _GetPointViewState();
}

class _GetPointViewState extends State<GetPointView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          pointCardView(text: "Herşey muhteşemdi, çok eğlenceli ve uyumlu bir kişilik.  Beraber gezerken çok eğlendik." , userimagePath: ImagePath().profil2Img, username: "username"),
          pointCardView(text: "Harika bir deneyimdi benim için. Farklı şehirlerde yeni deneyimler yaşamak için sabırsızlanıyorum" , userimagePath: ImagePath().profilImg, username: "username"),
        ],
      ),
    );
  }
}
