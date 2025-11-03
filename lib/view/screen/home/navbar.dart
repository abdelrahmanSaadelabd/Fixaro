import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:Fixaro/view/widget/muni/appbar.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:Fixaro/controller/homecontroller/navbarcontroller.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<Navbarcontroller>();
    return LayoutBuilder(
      builder: (context, constraints) {
        final h = constraints.maxHeight;
        final w = constraints.maxWidth;
        return SizedBox(
          width: w,
          height: h,
          child: Stack(
            children: [
              Stack(
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
                    top: h * 0.1,
                    left: w * 0.55,
                    child: Container(
                      width: w * 0.9,
                      height: h * 0.25,
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
                    bottom: h * 0.05,
                    right: w * 0.6,
                    child: Container(
                      color: Colors.transparent,
                      child: Container(
                        width: w * 0.9,
                        height: h * 0.25,
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
                      width: w,
                      height: h,
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
                  Positioned(
                    top: h * 0.04,
                    left: w * 0.2,
                    child: appbarminu(w, h),
                  ),
                  Positioned(
                    top: h * 0.2,
                    left: w * 0.43,
                    child: Column(
                      spacing: h * 0.04,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        minulist(h, w, Icons.person_outline, "Edit Profile"),
                        minulist(h, w, Icons.history, "Booking History"),
                        minulist(
                          h,
                          w,
                          Icons.location_on_outlined,
                          "Saved Addresses",
                        ),
                        minulist(h, w, Icons.wallet_outlined, "My Wallet"),
                        minulist(h, w, Icons.support_agent, "Support & Help"),
                        minulist(h, w, Icons.info_outline, "About Fixaro"),
                        minulist(
                          h,
                          w,
                          Icons.privacy_tip_outlined,
                          "Privacy Policy",
                        ),
                        minulist(h, w, Icons.settings, "Settings"),
                        minulist(h, w, Icons.logout, "Logout"),
                      ],
                    ),
                  ),
                ],
              ),

              GetBuilder<Navbarcontroller>(
                builder: (navcontroller) {
                  return AnimatedPositioned(
                    duration: Duration(milliseconds: 10),
                    top: h * navcontroller.allnavtop,
                    right: w * navcontroller.allnavrite,
                    child: Align(
                      alignment: AlignmentGeometry.bottomCenter,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),

                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: h * navcontroller.allnavh,
                          width: w * navcontroller.allnavw,
                          child: Material(
                            color: Colors.transparent,

                            child: Stack(
                              children: [
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 800),
                                  height: h,
                                  width: w,

                                  child: navcontroller
                                      .page[navcontroller.cruntpage],
                                ),
                                AnimatedPositioned(
                                  duration: Duration(milliseconds: 800),
                                  top: h * navcontroller.cont1top,
                                  left: w * navcontroller.cont1,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: SizedBox(
                                      height: h * 0.06,
                                      width: w * .4,
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 25,
                                          sigmaY: 25,
                                        ),

                                        child: Container(
                                          height: h * 0.06,
                                          width: w * .4,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: AlignmentGeometry.topRight,

                                              end: AlignmentGeometry.bottomLeft,
                                              colors: [
                                                const Color.fromARGB(
                                                  255,
                                                  235,
                                                  188,
                                                  118,
                                                ).withOpacity(0.25),
                                                Colors.white.withOpacity(0.9),
                                              ],
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                255,
                                                102,
                                                83,
                                                0,
                                              ).withOpacity(0.6),
                                              width: 1,
                                            ),
                                          ),

                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  navcontroller.channgpage(4);
                                                },
                                                child: AnimatedScale(
                                                  scale:
                                                      navcontroller.cruntpage ==
                                                          4
                                                      ? 1.2
                                                      : 1.0,
                                                  duration: const Duration(
                                                    milliseconds: 250,
                                                  ),
                                                  curve: Curves.easeOut,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.date_range,
                                                        color:
                                                            navcontroller
                                                                    .cruntpage ==
                                                                4
                                                            ? const Color.fromARGB(
                                                                255,
                                                                92,
                                                                69,
                                                                1,
                                                              )
                                                            : const Color.fromARGB(
                                                                255,
                                                                110,
                                                                110,
                                                                110,
                                                              ),
                                                      ),
                                                      ...(navcontroller
                                                                  .cruntpage ==
                                                              4
                                                          ? [
                                                              Text(
                                                                "Book",
                                                                style: TextStyle(
                                                                  fontSize:
                                                                      w * 0.03,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color:
                                                                      const Color.fromARGB(
                                                                        255,
                                                                        92,
                                                                        69,
                                                                        1,
                                                                      ),
                                                                ),
                                                              ),
                                                            ]
                                                          : []),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  navcontroller.channgpage(1);
                                                },
                                                child: AnimatedScale(
                                                  scale:
                                                      navcontroller.cruntpage ==
                                                          1
                                                      ? 1.2
                                                      : 1.0,
                                                  duration: const Duration(
                                                    milliseconds: 250,
                                                  ),
                                                  curve: Curves.easeOut,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.bookmark,
                                                        color:
                                                            navcontroller
                                                                    .cruntpage ==
                                                                1
                                                            ? const Color.fromARGB(
                                                                255,
                                                                92,
                                                                69,
                                                                1,
                                                              )
                                                            : const Color.fromARGB(
                                                                255,
                                                                110,
                                                                110,
                                                                110,
                                                              ),
                                                      ),
                                                      ...(navcontroller
                                                                  .cruntpage ==
                                                              1
                                                          ? [
                                                              Text(
                                                                "Save",
                                                                style: TextStyle(
                                                                  fontSize:
                                                                      w * 0.03,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color:
                                                                      const Color.fromARGB(
                                                                        255,
                                                                        92,
                                                                        69,
                                                                        1,
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
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                AnimatedPositioned(
                                  duration: Duration(milliseconds: 800),
                                  top: h * navcontroller.cont2top,
                                  right: w * navcontroller.cont2,
                                  child: ClipRRect(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      30,
                                    ),
                                    child: SizedBox(
                                      height: h * 0.06,
                                      width: w * .4,
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 25,
                                          sigmaY: 25,
                                        ),

                                        child: Container(
                                          height: h * 0.06,
                                          width: w * .4,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: AlignmentGeometry.topLeft,

                                              end:
                                                  AlignmentGeometry.bottomRight,
                                              colors: [
                                                const Color.fromARGB(
                                                  255,
                                                  235,
                                                  188,
                                                  118,
                                                ).withOpacity(0.25),
                                                Colors.white.withOpacity(0.9),
                                              ],
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
                                            border: Border.all(
                                              color: const Color.fromARGB(
                                                255,
                                                102,
                                                83,
                                                0,
                                              ).withOpacity(0.6),
                                              width: 1,
                                            ),
                                          ),

                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  navcontroller.channgpage(2);
                                                },
                                                child: AnimatedScale(
                                                  scale:
                                                      navcontroller.cruntpage ==
                                                          2
                                                      ? 1.2
                                                      : 1.0,
                                                  duration: const Duration(
                                                    milliseconds: 250,
                                                  ),
                                                  curve: Curves.easeOut,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.chat,
                                                        color:
                                                            navcontroller
                                                                    .cruntpage ==
                                                                2
                                                            ? const Color.fromARGB(
                                                                255,
                                                                92,
                                                                69,
                                                                1,
                                                              )
                                                            : const Color.fromARGB(
                                                                255,
                                                                110,
                                                                110,
                                                                110,
                                                              ),
                                                      ),
                                                      ...(navcontroller
                                                                  .cruntpage ==
                                                              2
                                                          ? [
                                                              Text(
                                                                "Chat",
                                                                style: TextStyle(
                                                                  fontSize:
                                                                      w * 0.03,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color:
                                                                      const Color.fromARGB(
                                                                        255,
                                                                        92,
                                                                        69,
                                                                        1,
                                                                      ),
                                                                ),
                                                              ),
                                                            ]
                                                          : []),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  navcontroller.channgpage(3);
                                                },
                                                child: AnimatedScale(
                                                  scale:
                                                      navcontroller.cruntpage ==
                                                          3
                                                      ? 1.2
                                                      : 1.0,
                                                  duration: const Duration(
                                                    milliseconds: 800,
                                                  ),
                                                  curve: Curves.easeOut,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.person,
                                                        color:
                                                            navcontroller
                                                                    .cruntpage ==
                                                                3
                                                            ? const Color.fromARGB(
                                                                255,
                                                                92,
                                                                69,
                                                                1,
                                                              )
                                                            : const Color.fromARGB(
                                                                255,
                                                                110,
                                                                110,
                                                                110,
                                                              ),
                                                      ),
                                                      ...(navcontroller
                                                                  .cruntpage ==
                                                              3
                                                          ? [
                                                              Text(
                                                                "Profile",
                                                                style: TextStyle(
                                                                  fontSize:
                                                                      w * 0.03,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color:
                                                                      const Color.fromARGB(
                                                                        255,
                                                                        92,
                                                                        69,
                                                                        1,
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
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                AnimatedPositioned(
                                  duration: Duration(milliseconds: 100),
                                  top: h * navcontroller.cont3top,
                                  right: w * 0.383,
                                  child: AnimatedOpacity(
                                    duration: Duration(milliseconds: 400),
                                    opacity: navcontroller.cont3,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadiusGeometry.circular(1000),
                                      child: Container(
                                        height: h * 0.07,
                                        width: w * .23,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 25,
                                            sigmaY: 25,
                                          ),

                                          child: InkWell(
                                            onTap: () {
                                              navcontroller.channgpage(0);
                                            },
                                            child: Container(
                                              height: h * 0.06,
                                              width: w * .4,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                gradient: LinearGradient(
                                                  begin: AlignmentGeometry
                                                      .topCenter,

                                                  end: AlignmentGeometry
                                                      .bottomCenter,
                                                  colors:
                                                      navcontroller.cruntpage ==
                                                          0
                                                      ? [
                                                          const Color.fromARGB(
                                                            255,
                                                            235,
                                                            188,
                                                            118,
                                                          ).withOpacity(0.25),
                                                          Colors.white
                                                              .withOpacity(0.9),
                                                        ]
                                                      : [
                                                          const Color.fromARGB(
                                                            255,
                                                            102,
                                                            102,
                                                            102,
                                                          ).withOpacity(0.25),
                                                          const Color.fromARGB(
                                                            255,
                                                            114,
                                                            114,
                                                            114,
                                                          ).withOpacity(0.9),
                                                        ],
                                                ),
                                                border: Border.all(
                                                  color: const Color.fromARGB(
                                                    255,
                                                    102,
                                                    83,
                                                    0,
                                                  ).withOpacity(0.6),
                                                  width: 1,
                                                ),
                                              ),

                                              child: AnimatedScale(
                                                scale:
                                                    navcontroller.cruntpage == 0
                                                    ? 1.2
                                                    : 1.0,
                                                duration: const Duration(
                                                  milliseconds: 250,
                                                ),
                                                curve: Curves.easeOut,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.home,
                                                      color:
                                                          navcontroller
                                                                  .cruntpage ==
                                                              0
                                                          ? const Color.fromARGB(
                                                              255,
                                                              92,
                                                              69,
                                                              1,
                                                            )
                                                          : const Color.fromARGB(
                                                              255,
                                                              110,
                                                              110,
                                                              110,
                                                            ),
                                                    ),
                                                    ...(navcontroller
                                                                .cruntpage ==
                                                            0
                                                        ? [
                                                            Text(
                                                              "Home",
                                                              style: TextStyle(
                                                                fontSize:
                                                                    w * 0.03,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    const Color.fromARGB(
                                                                      255,
                                                                      92,
                                                                      69,
                                                                      1,
                                                                    ),
                                                              ),
                                                            ),
                                                          ]
                                                        : []),
                                                  ],
                                                ),
                                              ),
                                            ),
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
                    ),
                  );
                },
              ),
              Positioned(
                top: h * 0.05,
                right: w * 0.6,
                child: Material(
                  color: const Color.fromARGB(0, 255, 255, 255),
                  child: GetBuilder<Navbarcontroller>(
                    builder: (navcontroller) {
                      return ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(30),
                        child: InkWell(
                          onTap: () {
                            navcontroller.closeminu();
                          },
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          overlayColor: const MaterialStatePropertyAll(
                            Colors.transparent,
                          ),
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 800),
                            width: w * navcontroller.closeminuw,
                            height: h * navcontroller.closeminuh,
                            color: const Color.fromARGB(0, 0, 0, 0),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

Widget minulist(double h, double w, icon, name) {
  return Row(
    spacing: w * 0.03,
    children: [
      Icon(icon, size: h * 0.04, color: Colors.white),
      Text(
        name,
        style: TextStyle(
          decoration: TextDecoration.none,
          color: Colors.white,
          fontSize: w * 0.048,
        ),
      ),
    ],
  );
}
