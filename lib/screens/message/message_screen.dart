import 'package:flutter/material.dart';

import '../../product/utility/constants/image_path.dart';

class MessageView extends StatefulWidget {
  const MessageView({super.key});

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mesaj Kutusu"),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Image.asset(ImagePath().noMessage, height: 300,),
        ),
        Padding(
          padding: const EdgeInsets.only(top:28.0),
          child: Center(child: Text("Henüz hiç mesajın yok", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),)),
        )

      ],),
    );
  }
}
