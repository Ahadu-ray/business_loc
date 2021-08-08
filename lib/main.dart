import 'package:flutter/material.dart';
import 'package:kirb/constants/cutomThemeData.dart';
import 'package:kirb/screens/mainRoutingScreen.dart';
import 'package:kirb/services/locationServices.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => LocationServices(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: customThemeData,
        home: MainRoutingScreen(),
      ),
    );
  }
}
