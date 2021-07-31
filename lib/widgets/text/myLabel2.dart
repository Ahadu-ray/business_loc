import 'package:flutter/material.dart';

class MyLabel2 extends StatelessWidget {
  final String text;
  const MyLabel2({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Text(
        this.text,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
      ),
    );
  }
}
