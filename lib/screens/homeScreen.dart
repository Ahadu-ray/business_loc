import 'package:flutter/material.dart';
import 'package:kirb/constants/cutomThemeData.dart';
import 'package:kirb/widgets/featuredList.dart';
import 'package:kirb/widgets/tagsList.dart';
import 'package:kirb/widgets/text/myLabel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: MyLabel(
          text: 'kirb',
        ),
        centerTitle: true,
        elevation: 2,
        shadowColor: customThemeData.accentColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        )),
      ),
      body: Container(
        height: size.height,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyLabel(text: 'tags'),
                  TagsList(),
                ],
              ),
            ),
            MyLabel(text: 'featured'),
            FeaturedList(),
          ],
        ),
      ),
    );
  }
}
