import 'package:flutter/material.dart';
import 'package:kirb/constants/cutomThemeData.dart';
import 'package:kirb/widgets/text/myDescriptionText.dart';
import 'package:kirb/widgets/text/myLabel2.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),
        child: ListView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, i) {
            return setFeatured(i);
          },
          itemCount: 5,
        ),
      ),
    );
  }

  Widget setFeatured(int index) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: customThemeData.accentColor, blurRadius: 2)
      ]),
      margin: EdgeInsets.only(bottom: 20),
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            'assets/images/trialImage.jpg',
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyLabel2(text: 'Shoa Super Market'),
                MyDescriptionText(text: 'We have this we have that'),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.location_pin,
                      size: 15,
                    ),
                    MyDescriptionText(text: 'Megenagna'),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 15,
                    ),
                    MyDescriptionText(text: '10K'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
