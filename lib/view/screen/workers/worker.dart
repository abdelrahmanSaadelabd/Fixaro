import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:Fixaro/view/widget/worker/buttonworker.dart';
import 'package:Fixaro/view/widget/person/appbarworker.dart';
import 'package:Fixaro/controller/workercontroller/workercontroller.dart';

class Workerscreen extends StatelessWidget {
  const Workerscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<Workercontroller>();

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
                child: GetBuilder<Workercontroller>(
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
                            image: AssetImage("assets/image/pr1.jpg"),
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
                top: height * .49,
                left: width * 0.05,
                child: GetBuilder<Workercontroller>(
                  builder: (controller) {
                    return AnimatedOpacity(
                      duration: Duration(milliseconds: 400),
                      opacity: controller.conopicty,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),

                          border: Border.all(
                            color: const Color.fromARGB(
                              255,
                              255,
                              255,
                              255,
                            ).withValues(alpha: .2),
                            width: 2,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),

                          child: Container(
                            width: width * .9,
                            height: height * .38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  const Color.fromARGB(
                                    255,
                                    139,
                                    139,
                                    139,
                                  ).withValues(alpha: .01),
                                  const Color.fromARGB(
                                    255,
                                    110,
                                    110,
                                    110,
                                  ).withValues(alpha: .01),
                                ],
                              ),
                            ),
                            child: ClipRRect(
                              child: Stack(
                                children: [
                                  SizedBox(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 3,
                                        sigmaY: 3,
                                      ),
                                      child: Container(
                                        color: const Color.fromARGB(
                                          99,
                                          211,
                                          211,
                                          211,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(height * .02),
                                    child: Column(
                                      spacing: height * 0.005,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              textAlign: TextAlign.start,

                                              "Carpenter",
                                              style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: height * 0.028,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                            Container(
                                              width: width * 0.2,
                                              height: height * 0.05,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.topCenter,
                                                  end: Alignment.bottomCenter,
                                                  colors: [
                                                    const Color.fromARGB(
                                                      255,
                                                      241,
                                                      173,
                                                      71,
                                                    ).withOpacity(0.8),
                                                    const Color.fromARGB(
                                                      255,
                                                      92,
                                                      69,
                                                      1,
                                                    ),
                                                  ],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  textAlign: TextAlign.start,

                                                  "\$250",
                                                  style: TextStyle(
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: height * 0.022,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    letterSpacing: 1,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          textAlign: TextAlign.start,
                                          "⭐⭐⭐⭐⭐ 4.8 out of 5",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: height * 0.023,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                        GetBuilder<Workercontroller>(
                                          builder: (controller) {
                                            return Row(
                                              spacing: width * 0.1,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                button(
                                                  controller,
                                                  0,
                                                  width,
                                                  height,
                                                ),
                                                button(
                                                  controller,
                                                  1,
                                                  width,
                                                  height,
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                        Text(
                                          textAlign: TextAlign.start,

                                          "Description:",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: height * 0.023,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                        Text(
                                          textAlign: TextAlign.start,

                                          "Skilled hands that craft and fix with precision.From repairing doors and windows to creating custom furniture \nour carpenters bring quality, reliability, and craftsmanship right to your home.",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: height * 0.018,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromARGB(
                                              255,
                                              143,
                                              143,
                                              143,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: height * .89,
                left: width * 0.05,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),

                    border: Border.all(
                      color: const Color.fromARGB(
                        255,
                        255,
                        255,
                        255,
                      ).withValues(alpha: .2),
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
                            const Color.fromARGB(
                              255,
                              139,
                              139,
                              139,
                            ).withValues(alpha: .01),
                            const Color.fromARGB(
                              255,
                              110,
                              110,
                              110,
                            ).withValues(alpha: .01),
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
                                  color: const Color.fromARGB(
                                    99,
                                    211,
                                    211,
                                    211,
                                  ),
                                ),
                              ),
                            ),
                            GetBuilder<Workercontroller>(
                              builder: (controller) {
                                return AnimatedOpacity(
                                  duration: Duration(milliseconds: 400),
                                  opacity: controller.con2opicty,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentGeometry.centerRight,
                                        child: Container(
                                          width: width * 0.15,
                                          height: height,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Colors.white.withOpacity(0.1),
                                                Colors.white.withOpacity(0.1),
                                              ],
                                            ),
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                111,
                                                255,
                                                255,
                                                255,
                                              ),
                                              width: 1,
                                            ),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child: Center(
                                              child: Icon(
                                                Icons.chat,
                                                size: height * .038,

                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: AlignmentGeometry.center,
                                        child: Text(
                                          textAlign: TextAlign.start,

                                          "Booking Now",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: height * 0.02,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            letterSpacing: 1,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentGeometry.centerRight,
                                        child: Container(
                                          width: width * 0.15,
                                          height: height,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,

                                            gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                const Color.fromARGB(
                                                  255,
                                                  241,
                                                  173,
                                                  71,
                                                ).withOpacity(0.8),
                                                const Color.fromARGB(
                                                  255,
                                                  92,
                                                  69,
                                                  1,
                                                ),
                                              ],
                                            ),
                                            border: Border.all(
                                              color: Colors.white.withOpacity(
                                                0.3,
                                              ),
                                              width: 1,
                                            ),
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              Get.back();
                                            },
                                            child: Center(
                                              child: Center(
                                                child: Icon(
                                                  Icons.date_range,
                                                  size: height * .038,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
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
