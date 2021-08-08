import 'package:flutter/material.dart';
import 'package:kirb/constants/cutomThemeData.dart';
import 'package:kirb/screens/business/businesMainScreen.dart';
import 'package:kirb/screens/business/businessLocationScreen.dart';
import 'package:kirb/widgets/text/myLabel2.dart';

class BusinessScreen extends StatefulWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  _BusinessScreenState createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                forceElevated: true,
                elevation: 5,
                expandedHeight: 250,
                pinned: true,
                title: Text("Shoa Super Market"),
                centerTitle: true,
                shadowColor: customThemeData.accentColor,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: Image.asset(
                    'assets/images/trialImage.jpg',
                    color: customThemeData.primaryColor.withOpacity(0.3),
                    colorBlendMode: BlendMode.lighten,
                    fit: BoxFit.fill,
                  ),
                ),
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                actions: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
                ],
                bottom: TabBar(
                  tabs: [
                    Tab(
                      iconMargin: EdgeInsets.zero,
                      icon: Icon(Icons.list),
                      text: 'main',
                    ),
                    Tab(
                      iconMargin: EdgeInsets.zero,
                      icon: Icon(Icons.pin_drop),
                      text: 'location',
                    ),
                    Tab(
                      iconMargin: EdgeInsets.zero,
                      icon: Icon(Icons.celebration),
                      text: 'events',
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(children: [
            BusinessMainScreen(),
            BusinessLocationScreen(),
            Center(
              child: MyLabel2(
                text: 'events',
              ),
            ),
          ])),
    );
  }
}
