import 'package:flutter/material.dart';
import 'package:kirb/constants/cutomThemeData.dart';
import 'package:kirb/screens/business/businessScreen.dart';
import 'package:kirb/widgets/text/myDescriptionText.dart';
import 'package:kirb/widgets/text/myLabel2.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, i) {
            return setFeatured(context, i);
          },
          itemCount: 5,
        ),
      ),
    );
  }

  Widget setFeatured(BuildContext context, int index) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BusinessScreen()),
      ),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2),
                color: customThemeData.accentColor.withOpacity(0.5),
                spreadRadius: .5)
          ],
        ),
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
              color: Colors.red[50],
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
      ),
    );
  }
}
