import 'package:flutter/material.dart';
import 'package:kirb/constants/cutomThemeData.dart';

class MyMenuContainer extends StatelessWidget {
  const MyMenuContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 200,
      width: double.infinity,
      // color: Colors.grey[200],
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20)),
        color: customThemeData.primaryColor,
        boxShadow: [
          BoxShadow(
              offset: Offset(0.0, 10), color: Colors.grey, blurRadius: 10.0),
        ],
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, i) {
                return setColumn();
              },
              itemCount: 4,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  setColumn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 150,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage(''),
                  //   fit: BoxFit.fill,
                  // ),
                  borderRadius: BorderRadius.circular(10),
                  color: customThemeData.accentColor),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 200,
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Business Name"),
                  Text("The Descriptions Goes Here"),
                  Text("Location"),
                  Row(
                    children: [
                      Text(
                        "5",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Icon(
                        Icons.thumb_up_outlined,
                        color: Colors.grey,
                        size: 12,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
