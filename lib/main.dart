import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:new_task_manager/constants/constants.dart';
import 'package:new_task_manager/screens/home_screen/root_home_screen.dart';
import 'package:new_task_manager/screens/home_screen/sub_screens/view_individual_task.dart';
import 'package:new_task_manager/screens/splash_screen/splash_screen.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: MaterialColor(0xFF2CE5DA, {
            50: Color.fromRGBO(44, 229, 218, .1),
            100: Color.fromRGBO(44, 229, 218, .2),
            200: Color.fromRGBO(44, 229, 218, .3),
            300: Color.fromRGBO(44, 229, 218, .4),
            400: Color.fromRGBO(44, 229, 218, .5),
            500: Color.fromRGBO(44, 229, 218, .6),
            600: Color.fromRGBO(44, 229, 218, .7),
            700: Color.fromRGBO(44, 229, 218, .8),
            800: Color.fromRGBO(44, 229, 218, .9),
            900: Color.fromRGBO(44, 229, 218, 1),
          }),
          fontFamily: "Mulish"),
      home: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return SplashScreen();
            } else {
              return Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          }),
    );
  }
}
