import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:Fixaro/view/widget/person/appbarworker.dart';
import 'package:Fixaro/controller/homecontroller/profilecontroller.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<Profilecontroller>();

    return LayoutBuilder(
      builder: (context, constraints) {
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
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: width,
                  height: height * .25,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(111, 255, 145, 0),
                        spreadRadius: 150,
                        blurRadius: 150,
                      ),
                    ],
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
              Positioned(
                child: GetBuilder<Profilecontroller>(
                  builder: (controller) {
                    return AnimatedScale(
                      duration: Duration(milliseconds: 800),
                      scale: controller.imagetrans,
                      child: Container(
                        width: width,
                        height: height * .55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/image/profile.png"),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: height * .52,
                child: Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(0, 210, 182, 121),
                        Color(0xFFF5E3A1),
                        Color(0xFFD2B679),
                        Color(0xFF8C7A3B),
                      ],
                      stops: [0.05, 0.35, 0.7, 1.0],
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 25,
                        spreadRadius: 10,
                        color: Color(0xFFF5E3A1),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    child: Stack(
                      children: [
                        Positioned(
                          top: height * 0.3,
                          left: width * .4,
                          child: Container(
                            width: width * 0.3,
                            height: height * .1,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 216, 132, 5),
                                  blurRadius: 100,
                                  spreadRadius: 60,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: BackdropFilter(
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height * .53,
                left: width * 0.05,
                child: GetBuilder<Profilecontroller>(
                  builder: (controller) {
                    return AnimatedOpacity(
                      duration: Duration(milliseconds: 400),
                      opacity: controller.conopicty,
                      child: Column(
                        spacing: height * 0.01,
                        children: [
                          profile(
                            height,
                            width,
                            "abdo.saad.abd15@gmail.com",
                            Icons.email,
                          ),
                          profile(
                            height,
                            width,
                            "abdelrahman saad",
                            Icons.person,
                          ),
                          profile(height, width, "20-01207273618", Icons.phone),
                          profile(
                            height,
                            width,
                            "Alexandria",
                            Icons.location_on,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              appbarworker(width, height, ""),
            ],
          ),
        );
      },
    );
  }
}

Widget profile(height, width, name, icon) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),

      border: Border.all(
        color: const Color.fromARGB(255, 255, 255, 255).withValues(alpha: .2),
        width: 2,
      ),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(50),

      child: Container(
        width: width * .9,
        height: height * .08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(255, 139, 139, 139).withValues(alpha: .01),
              const Color.fromARGB(255, 110, 110, 110).withValues(alpha: .01),
            ],
          ),
        ),
        child: ClipRRect(
          child: Stack(
            children: [
              SizedBox(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                  child: Container(
                    color: const Color.fromARGB(99, 211, 211, 211),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(height * .02),
                child: Column(
                  spacing: height * 0.005,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      spacing: width * 0.02,
                      children: [
                        Icon(
                          size: height * 0.04,
                          icon,
                          color: const Color.fromARGB(255, 87, 71, 1),
                        ),
                        Container(
                          width: width * .70,
                          child: Text(
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            name,
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: height * 0.024,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
