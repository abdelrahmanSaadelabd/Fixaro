import 'dart:ui';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:Fixaro/view/widget/cate/appbar.dart';
import 'package:Fixaro/controller/core/constant/image.dart';
import 'package:Fixaro/controller/catecontroller/catecontroller.dart';

class Catescreen extends StatelessWidget {
  const Catescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<Catecontroller>();

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
                top: height * 0.15,

                child: GetBuilder<Catecontroller>(
                  builder: (controller) {
                    return controller.isLoading == false
                        ? SizedBox(
                            width: width,
                            height: height,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: width,
                                    height: height,
                                    child: Column(
                                      spacing: height * 0.01,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: AlignmentGeometry.center,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              50,
                                            ),

                                            child: Container(
                                              width: width * .95,
                                              height: height * 0.29,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: const Color.fromARGB(
                                                  55,
                                                  255,
                                                  255,
                                                  255,
                                                ),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "assets/image/o6.jpg",
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Container(
                                                      height: height * 0.12,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              50,
                                                            ),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.black
                                                                .withOpacity(
                                                                  0.25,
                                                                ),
                                                            spreadRadius: 0,
                                                            blurRadius: 10,
                                                            offset:
                                                                const Offset(
                                                                  0,
                                                                  4,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),

                                                  Positioned(
                                                    bottom: height * 0.01,
                                                    left: width * 0.05,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          textAlign:
                                                              TextAlign.start,

                                                          "Home Repair",
                                                          style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            fontSize:
                                                                height * 0.028,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors.white,
                                                            letterSpacing: 1,
                                                          ),
                                                        ),
                                                        Text(
                                                          textAlign:
                                                              TextAlign.start,
                                                          "reliable repairs for every corner of your home.",
                                                          style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            fontSize:
                                                                height * 0.015,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),

                                                  Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                        top: height * 0.02,
                                                        left: width * 0.02,
                                                      ),
                                                      width: width * 0.22,
                                                      height: height * 0.035,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              30,
                                                            ),
                                                        gradient: LinearGradient(
                                                          begin: Alignment
                                                              .topCenter,
                                                          end: Alignment
                                                              .bottomCenter,
                                                          colors: [
                                                            const Color.fromARGB(
                                                              255,
                                                              70,
                                                              70,
                                                              70,
                                                            ).withOpacity(0.2),
                                                            const Color.fromARGB(
                                                              255,
                                                              61,
                                                              61,
                                                              61,
                                                            ).withOpacity(0.4),
                                                          ],
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.white
                                                              .withOpacity(0.4),
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: InkWell(
                                                        onTap: () {},
                                                        child: Center(
                                                          child: Text(
                                                            textAlign:
                                                                TextAlign.start,
                                                            "45% off",
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Roboto',
                                                              decoration:
                                                                  TextDecoration
                                                                      .none,
                                                              fontSize:
                                                                  height *
                                                                  0.022,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "🔸What do you need today?",
                                          style: TextStyle(
                                            decoration: TextDecoration.none,
                                            fontSize: height * 0.025,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Expanded(
                                          child: ListView.builder(
                                            shrinkWrap: false,
                                            padding: EdgeInsets.zero,
                                            itemCount: controller.catef.length,
                                            itemBuilder: (context, index) => Align(
                                              alignment:
                                                  AlignmentGeometry.centerLeft,
                                              child: InkWell(
                                                onTap: () =>
                                                    Get.toNamed("/person"),
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                    bottom: height * 0.02,
                                                    left: width * 0.02,
                                                  ),
                                                  width: width * 0.95,
                                                  height: height * 0.19,
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                        width: width,
                                                        height: height,
                                                        decoration: BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color:
                                                                  Color.fromARGB(
                                                                    87,
                                                                    255,
                                                                    145,
                                                                    0,
                                                                  ).withValues(
                                                                    alpha: 0.3,
                                                                  ),
                                                              blurRadius: 15,
                                                              spreadRadius: 1,
                                                            ),
                                                          ],
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                15,
                                                              ),
                                                          image: DecorationImage(
                                                            image: AssetImage(
                                                              "${controller.catef[index]["image"]}",
                                                            ),
                                                            fit: BoxFit.fill,
                                                          ),
                                                        ),
                                                      ),
                                                      Stack(
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                              height: height,
                                                              decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      50,
                                                                    ),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color:
                                                                        Color.fromARGB(
                                                                          185,
                                                                          0,
                                                                          0,
                                                                          0,
                                                                        ).withOpacity(
                                                                          0.2,
                                                                        ),
                                                                    spreadRadius:
                                                                        0,
                                                                    blurRadius:
                                                                        10,
                                                                    offset:
                                                                        const Offset(
                                                                          0,
                                                                          4,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),

                                                          Positioned(
                                                            bottom:
                                                                height * 0.01,
                                                            left: width * 0.05,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,

                                                                  "${controller.catef[index]["title"]}",
                                                                  style: TextStyle(
                                                                    decoration:
                                                                        TextDecoration
                                                                            .none,
                                                                    fontSize:
                                                                        height *
                                                                        0.028,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors
                                                                        .white,
                                                                    letterSpacing:
                                                                        1,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  "${controller.catef[index]["subtitle"]}",
                                                                  style: TextStyle(
                                                                    decoration:
                                                                        TextDecoration
                                                                            .none,
                                                                    fontSize:
                                                                        height *
                                                                        0.015,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .white,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: width, height: height * 0.16),
                                ],
                              ),
                            ),
                          )
                        : Align(
                            alignment: AlignmentGeometry.topCenter,
                            child: SizedBox(
                              height: height * .5,
                              width: width,
                              child: LottieBuilder.asset(
                                APPimage.loading2,
                                fit: BoxFit.contain,
                              ),
                            ),
                          );
                  },
                ),
              ),
              appbarcate(width, height),
            ],
          ),
        );
      },
    );
  }
}
