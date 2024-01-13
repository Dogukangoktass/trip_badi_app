import 'package:flutter/material.dart';

import '../../product/utility/constants/image_path.dart';
import '../../product/widget/card/post_card.dart';

class ProfileSavedPlanView extends StatefulWidget {
  const ProfileSavedPlanView({super.key});

  @override
  State<ProfileSavedPlanView> createState() => _ProfileSavedPlanViewState();
}

class _ProfileSavedPlanViewState extends State<ProfileSavedPlanView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          postCard(onpressed: (){}, userimagePath: ImagePath().profil2Img,likeCount: "60",location: "Istanbul / Turkey",username: "username2",imagePath: ImagePath().istanbulImg),
          postCard(onpressed: (){}, userimagePath: ImagePath().profilImg,likeCount: "36",location: "Istanbul / Turkey",username: "username",imagePath: ImagePath().karsImg),

        ],
      ),
    );
  }
}
