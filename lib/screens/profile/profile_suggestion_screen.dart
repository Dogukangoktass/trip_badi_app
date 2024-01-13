import 'package:flutter/material.dart';
import '../../product/utility/constants/image_path.dart';
import '../../product/widget/card/suggestion_card_view.dart';

class ProfileSuggestionView extends StatefulWidget {
  const ProfileSuggestionView({super.key});
  @override
  State<ProfileSuggestionView> createState() => _ProfileSuggestionViewState();
}
class _ProfileSuggestionViewState extends State<ProfileSuggestionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
       children: [
        suggestion_card(text: "İcerik Detay", onpressed: (){}, imagePath: ImagePath().istanbulImg,matchOverall: "%75"),
        suggestion_card(text: "İcerik Detay", onpressed: (){}, imagePath: ImagePath().karsImg,matchOverall: "%85"),
        suggestion_card(text: "İcerik Detay", onpressed: (){}, imagePath: ImagePath().cappadociaImg,matchOverall: "%90"),
       ],),
    );
  }
}
