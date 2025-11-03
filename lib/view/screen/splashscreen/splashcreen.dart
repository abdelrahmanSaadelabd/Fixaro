import 'dart:ui';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:Fixaro/controller/core/constant/image.dart';
import 'package:Fixaro/controller/splashcontroller/animationsplashcontroller.dart';

class Splashcreen extends StatelessWidget {
  const Splashcreen({super.key});

  @override
  Widget build(BuildContext context) {
    SlideController slideController = Get.find();
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;
        final widget = constraints.maxWidth;
        return SizedBox(
          width: widget,
          height: height,
          child: Stack(
            children: [
              Container(
                width: widget,
                height: height,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 253, 171, 63),
                      Color.fromARGB(255, 204, 178, 132),
                      Color.fromARGB(255, 160, 110, 24),
                      Color.fromARGB(237, 90, 107, 11),
                    ],
                    stops: [0.0, 0.35, .8, 1.0],
                  ),
                ),
              ),

              Obx(() {
                return AnimatedOpacity(
                  curve: Curves.bounceInOut,

                  duration: Duration(seconds: 1),
                  opacity: slideController.opthycontaner.value,
                  child: SizedBox(
                    height: height,
                    width: widget,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                      child: Container(
                        width: widget,
                        height: height,
                        color: const Color.fromARGB(
                          255,
                          255,
                          255,
                          255,
                        ).withOpacity(0.25),
                      ),
                    ),
                  ),
                );
              }),
              Obx(() {
                return AnimatedPositioned(
                  duration: Duration(seconds: 1),
                  top: height * slideController.topOffall.value,

                  child: SizedBox(
                    height: height,
                    width: widget,
                    child: Stack(
                      children: [
                        Obx(() {
                          return AnimatedPositioned(
                            duration: Duration(seconds: 1),
                            top: height * slideController.topOffset.value,
                            right: widget * slideController.rightoffset.value,
                            child: SizedBox(
                              width: widget * 0.3,
                              height: height * .15,

                              child: Image.asset(
                                APPimage.logotop,
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        }),
                        Positioned(
                          top: height * 0.39,
                          right: widget * 0.35,
                          child: Obx(() {
                            return AnimatedOpacity(
                              curve: Curves.bounceInOut,

                              duration: Duration(seconds: 1),
                              opacity: slideController.opthylogo.value,
                              child: SizedBox(
                                width: widget * 0.3,
                                height: height * .15,

                                child: Image.asset(
                                  APPimage.logocentr,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            );
                          }),
                        ),
                        Obx(() {
                          return AnimatedPositioned(
                            duration: Duration(seconds: 1),
                            bottom: height * slideController.bottomOffset.value,
                            left: widget * slideController.liftoffset.value,
                            child: SizedBox(
                              width: widget * 0.4,
                              height: height * .2,
                              child: Image.asset(
                                APPimage.logobottom,
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),
                );
              }),
              Positioned(
                top: height * 0.45,
                right: widget * 0.26,
                child: Obx(() {
                  return AnimatedOpacity(
                    duration: Duration(seconds: 1),
                    opacity: slideController.opthytext.value,
                    child: SizedBox(
                      width: widget * 0.4,
                      height: height * .12,
                      child: Shimmer.fromColors(
                        baseColor: Colors.white,
                        highlightColor: const Color.fromARGB(255, 197, 166, 27),

                        child: Text(
                          "Fixaro",
                          style: TextStyle(
                            fontSize: widget * .1,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Cairo",
                            letterSpacing: 2,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              Obx(() {
                return AnimatedOpacity(
                  duration: Duration(seconds: 1),
                  opacity: slideController.opthytext2.value,
                  child: Align(
                    alignment: AlignmentGeometry.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: height * .1),

                      child: Text(
                        "✨Your home hero — Fixaro.",
                        style: TextStyle(
                          fontFamily: "cario",
                          fontSize: widget * .05,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
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
