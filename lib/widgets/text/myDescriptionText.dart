import 'package:flutter/material.dart';

class MyDescriptionText extends StatelessWidget {
  final String text;
  const MyDescriptionText({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Text(
        this.text,
        style: TextStyle(
            fontSize: 13, fontWeight: FontWeight.w400, color: Colors.grey),
      ),
    );
  }
}
