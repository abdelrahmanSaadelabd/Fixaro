import 'dart:ui';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:Fixaro/view/screen/auth/loginscreen.dart';
import 'package:Fixaro/controller/core/constant/image.dart';
import 'package:Fixaro/controller/data/datasours/static/static.dart';

class Anboardingscrean extends StatefulWidget {
  const Anboardingscrean({super.key});

  @override
  State<Anboardingscrean> createState() => _AnboardingscreanState();
}

class _AnboardingscreanState extends State<Anboardingscrean> {
  int currentIndex = 0; // الصفحة الحالية

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final height = constraints.maxHeight;
        final width = constraints.maxWidth;

        // دالة تبني الصفحة عشان نكررها بسهولة
        Widget buildPage({
          required Color overlayColor,
          required String lottieAsset,
          required int pageIndex,

          required String title,
          required String subtitle,
        }) {
          return Stack(
            children: [
              Container(
                width: width,
                height: height,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 253, 171, 63),
                      Color.fromARGB(255, 204, 178, 132),
                      Color.fromARGB(255, 160, 110, 24),
                    ],
                    stops: [0.0, 0.35, .8],
                  ),
                ),
              ),
              // blur بسيط لتحسين الأداء
              SizedBox(
                height: height,
                width: width,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(color: overlayColor.withOpacity(0.25)),
                ),
              ),
              Align(
                alignment: AlignmentGeometry.center,
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: "cario",
                    fontSize: width * .1,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentGeometry.center,
                child: Container(
                  margin: EdgeInsets.only(top: height * 0.29, left: width * .0),
                  child: Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "cario",
                      fontSize: width * .055,
                      color: const Color.fromARGB(255, 77, 76, 76),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(bottom: height * 0.4),
                  child: LottieBuilder.asset(
                    lottieAsset,
                    height: height * 0.28,
                    animate: currentIndex == pageIndex,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentGeometry.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: height * 0.1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            onbroadinglist.length,
                            (index) => AnimatedContainer(
                              margin: EdgeInsets.only(right: 5),
                              duration: Duration(milliseconds: 600),
                              width: currentIndex == index ? 20 : 5,
                              height: 6,

                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 0, 0, 0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ],
                      ),
                      ...(currentIndex == 2
                          ? [
                              Material(
                                color: const Color.fromARGB(0, 255, 255, 255),
                                child: InkWell(
                                  onTap: () {
                                    Get.offAll(
                                      Loginscreen(),
                                      transition:
                                          Transition.rightToLeftWithFade,
                                      duration: Duration(seconds: 1),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: height * 0.05),
                                    height: height * 0.049,
                                    width: width * 0.5,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                            171,
                                            0,
                                            0,
                                            0,
                                          ).withOpacity(0.2),
                                          blurRadius: 20,
                                          spreadRadius: 5,
                                        ),
                                      ],
                                      gradient: LinearGradient(
                                        colors: [
                                          const Color.fromARGB(255, 97, 58, 7),
                                          const Color.fromARGB(
                                            255,
                                            156,
                                            93,
                                            11,
                                          ),
                                        ],
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(50),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Start Fix 🛠️",
                                        style: TextStyle(
                                          fontSize: height * .025,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                            255,
                                            255,
                                            250,
                                            237,
                                          ).withOpacity(0.9),
                                          letterSpacing: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]
                          : []),
                    ],
                  ),
                ),
              ),
            ],
          );
        }

        final pages = [
          buildPage(
            overlayColor: const Color.fromARGB(54, 119, 107, 1),
            lottieAsset: APPimage.abarding4,
            pageIndex: 0,
            title: "Pick Your Service",
            subtitle:
                "Whatever your home needs \n from plumbing and electricity \n to  cleaning and AC repair, \n Fixaro has you covered.\n Choose your service \n in seconds and\n we’ll handle\n the rest.",
          ),
          buildPage(
            overlayColor: const Color.fromARGB(255, 251, 255, 4),
            lottieAsset: APPimage.abarding2,
            pageIndex: 1,
            title: "Book & Pay Easily",
            subtitle:
                "Pick your time,confirm your \nlocation, and pay your way \ncash or online.It’s \nsmooth,simple,\n and secure.",
          ),
          buildPage(
            overlayColor: const Color.fromARGB(255, 255, 173, 231),
            lottieAsset: APPimage.abarding3,
            pageIndex: 2,
            title: "Find Nearby Experts",
            subtitle:
                "We connect you with trusted professionals near your\n location verified, rated,\n and ready to help\n right when you \n need them.",
          ),
        ];

        return LiquidSwipe(
          pages: pages,
          fullTransitionValue: 250,
          waveType: WaveType.liquidReveal,
          enableLoop: false,
          slideIconWidget: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          positionSlideIcon: 0.5,

          // 🔥 هنا نحدث الصفحة الحالية
          onPageChangeCallback: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        );
      },
    );
  }
}
