import 'dart:ui';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:Fixaro/view/widget/auth/login/buttonlogin.dart';
import 'package:Fixaro/view/widget/auth/sing_up/singuplogo.dart';
import 'package:Fixaro/view/widget/auth/login/textdiledlogin.dart';
import 'package:Fixaro/controller/authcontroller/singupcontroller/singupcontroller.dart';

class Singupscreen extends StatelessWidget {
  const Singupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Singupcontroller slideController = Get.find();

    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;

        return Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF3A2200), Color(0xFF1C1000)],
                  ),
                ),
              ),

              Positioned(
                top: height * 0.1,
                left: width * 0.55,
                child: Container(
                  width: width * 0.9,
                  height: height * 0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3000),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(70, 255, 200, 80),
                        spreadRadius: 100,
                        blurRadius: 120,
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                bottom: height * 0.05,
                right: width * 0.6,
                child: Container(
                  color: Colors.transparent,
                  child: Container(
                    width: width * 0.9,
                    height: height * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3000),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(70, 255, 200, 80),
                          spreadRadius: 100,
                          blurRadius: 120,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                child: Container(color: Colors.black.withOpacity(0.2)),
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
                        Colors.white.withOpacity(0.08),
                        Colors.white.withOpacity(0.02),
                      ],
                    ),
                  ),
                ),
              ),

              Singuplogo(height: height, width: width),
              Positioned(
                top: height * .08,
                right: width * 0.24,
                child: Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: const Color.fromARGB(255, 184, 178, 155),

                  child: Text(
                    "Fixaro",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber.shade100.withOpacity(0.9),
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: height * .15,
                right: width * 0.25,
                child: Text(
                  textAlign: TextAlign.center,
                  "Fix it smart. Fix it\n with Fixaro.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(
                      255,
                      175,
                      158,
                      115,
                    ).withOpacity(0.9),
                    letterSpacing: 2,
                  ),
                ),
              ),
              Obx(() {
                return AnimatedOpacity(
                  duration: Duration(milliseconds: 800),
                  opacity: slideController.cont.value,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: height * 0.08,
                        left: width * 0.06,
                      ),
                      width: width * 0.12,
                      height: height * 0.06,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color.fromARGB(
                              255,
                              255,
                              255,
                              255,
                            ).withOpacity(0.25),
                            Colors.white.withOpacity(0.1),
                          ],
                        ),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                  ),
                );
              }),
              Obx(() {
                return AnimatedOpacity(
                  duration: Duration(milliseconds: 800),
                  opacity: slideController.cont.value,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(top: height * 0.1),
                      width: width * 0.9,
                      height: height * 0.59,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color.fromARGB(
                              255,
                              254,
                              255,
                              177,
                            ).withOpacity(0.09),
                            Colors.white.withOpacity(0.1),
                          ],
                        ),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(height: height * .01),
                          Text(
                            "Create Your Account",
                            style: TextStyle(
                              fontSize: width * .06,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber.shade100.withOpacity(0.9),
                              letterSpacing: 2,
                            ),
                          ),
                          textfiledfixaro(width, height, "Username", false),
                          textfiledfixaro(
                            width,
                            height,
                            "Email Address",
                            false,
                          ),
                          textfiledfixaro(width, height, "Phone namber", false),
                          textfiledfixaro(width, height, "Password", false),
                          textfiledfixaro(
                            width,
                            height,
                            "Confirm Password",
                            true,
                          ),

                          buttonapp(width, height, "Sing up"),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        );
      },
    );
  }
}
