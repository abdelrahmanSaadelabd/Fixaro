import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:Fixaro/view/widget/home/home/cate.dart';
import 'package:Fixaro/view/widget/home/home/offer.dart';
import 'package:Fixaro/view/widget/home/home/appbar.dart';
import 'package:Fixaro/view/widget/home/home/appstars.dart';
import 'package:Fixaro/controller/homecontroller/homecontroller.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Homecontroller homecontroller = Get.find();
    return LayoutBuilder(
      builder: (context, constraints) {
        final List<Map<String, String>> categories = [
          {"icon": "assets/image/c1.svg", "name": "Fixing"},
          {"icon": "assets/image/c2.svg", "name": "Cleaning"},
          {"icon": "assets/image/c3.svg", "name": "Care"},
          {"icon": "assets/image/c7.svg", "name": "Garden"},
          {"icon": "assets/image/c5.svg", "name": "Home appliances"},
          {"icon": "assets/image/c6.svg", "name": "Moving"},
          {"icon": "assets/image/c8.svg", "name": "Wash"},
        ];
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;
        return Material(
          child: Stack(
            children: [
              Container(
                width: width,
                height: height,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFFFF8E1),
                      Color(0xFFF5E3A1),
                      Color(0xFFD2B679),
                      Color(0xFF8C7A3B),
                    ],
                    stops: [0.05, 0.35, 0.7, 1.0],
                  ),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                child: Container(
                  color: const Color.fromARGB(
                    255,
                    255,
                    255,
                    255,
                  ).withOpacity(0.3),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.white.withOpacity(0.1),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: width,
                  height: height * .25,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(87, 255, 145, 0),
                        spreadRadius: 80,
                        blurRadius: 150,
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: height * 0.208,

                child: SizedBox(
                  width: width,
                  height: height,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(height * 0.01),
                    child: Column(
                      spacing: height * 0.02,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "🔸Categroy",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: height * 0.032,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            letterSpacing: 2,
                          ),
                        ),
                        cate(categories, width, height),
                        Text(
                          "🔸Offers",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: height * 0.032,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            letterSpacing: 2,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: width * 0.06),
                          child: offer(homecontroller, width, height),
                        ),
                        Text(
                          "🔸App Stars",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: height * 0.032,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            letterSpacing: 2,
                          ),
                        ),
                        appstars(height, width),
                      ],
                    ),
                  ),
                ),
              ),
              appbar(width, height),
            ],
          ),
        );
      },
    );
  }
}
