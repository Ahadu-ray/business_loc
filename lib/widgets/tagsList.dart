import 'package:flutter/material.dart';
import 'package:kirb/constants/cutomThemeData.dart';
import 'package:kirb/constants/data.dart';
import 'package:kirb/widgets/text/myLabel2.dart';

class TagsList extends StatelessWidget {
  const TagsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return tagContainer(i);
        },
        itemCount: tagTitles.length,
      ),
    );
  }

  Widget tagContainer(int index) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(color: customThemeData.accentColor, blurRadius: 1),
              ],
            ),
            height: 80,
            width: 80,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Icon(
                tagIcons[index],
                size: 45,
                // color: Colors.black,
              ),
            ),
          ),
          MyLabel2(text: tagTitles[index])
        ],
      ),
    );
  }
}
