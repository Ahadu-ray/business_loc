import 'package:flutter/material.dart';
import 'package:kirb/widgets/text/myLabel2.dart';

class BusinessMainScreen extends StatelessWidget {
  const BusinessMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green)),
          onPressed: () {},
          child: MyLabel2(
            text: 'main',
          ),
        ),
      ),
    );
  }
}
