import 'package:get/get.dart';
import 'package:Fixaro/rout.dart';
import 'package:flutter/material.dart';
import 'package:Fixaro/initialBinding/initialBinding.dart';
import 'package:Fixaro/controller/core/services/myservices.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialServices();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    double titleFontSize = screenWidth * 0.1;
    double bodyFontSize = screenWidth * 0.045;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontFamily: "PlayfairDisplay",
            fontSize: titleFontSize,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          titleMedium: TextStyle(
            fontFamily: "PlayfairDisplay",
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
            fontSize: 20,

            fontFamily: "PlayfairDisplay",
            color: Colors.black,
          ),
          bodySmall: TextStyle(
            fontSize: bodyFontSize,

            fontFamily: "PlayfairDisplay",
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 161, 124, 0),
          ),
        ),
      ),
      initialBinding: initialBinding(),
      getPages: routes,
    );
  }
}
