import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:Fixaro/view/widget/home/home/logohome.dart';
import 'package:Fixaro/controller/homecontroller/navbarcontroller.dart';

Widget appbar(width, height) {
  return Container(
    width: width,
    height: height * 0.19,
    decoration: BoxDecoration(
      color: Colors.transparent,
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(87, 255, 145, 0),
          spreadRadius: 80,
          blurRadius: 150,
        ),
      ],
    ),
    child: Stack(
      children: [
        Positioned(
          right: width * 0.04,
          child: Logohome(height: height, width: width),
        ),
        Positioned(
          top: height * .055,
          right: width * 0.28,
          child: Shimmer.fromColors(
            baseColor: const Color.fromARGB(255, 87, 71, 1),
            highlightColor: const Color.fromARGB(255, 184, 178, 155),

            child: Text(
              "Fixaro",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: height * 0.04,
                fontWeight: FontWeight.bold,
                color: Colors.amber.shade100.withOpacity(0.9),
                letterSpacing: 2,
              ),
            ),
          ),
        ),
        Positioned(
          top: height * .12,
          right: width * 0.6,
          child: Text(
            textDirection: TextDirection.ltr,
            "One tap to fix\nclean, and care",
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: width * 0.05,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 0,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.only(top: height * 0.06, left: width * 0.06),
            width: width * 0.1,
            height: height * 0.06,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(255, 235, 188, 118).withOpacity(0.2),
                  Colors.white.withOpacity(0.8),
                ],
              ),
              border: Border.all(
                color: const Color.fromARGB(255, 102, 83, 0).withOpacity(0.3),
                width: 1,
              ),
            ),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.notifications,
                size: height * 0.03,

                color: const Color.fromARGB(255, 92, 69, 1),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: GetBuilder<Navbarcontroller>(
            builder: (controller) {
              return Container(
                margin: EdgeInsets.only(
                  top: height * 0.06,
                  right: width * 0.06,
                ),
                width: width * 0.1,
                height: height * 0.06,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color.fromARGB(255, 241, 173, 71).withOpacity(0.2),
                      Colors.white.withOpacity(0.8),
                    ],
                  ),
                  border: Border.all(
                    color: const Color.fromARGB(
                      255,
                      102,
                      83,
                      0,
                    ).withOpacity(0.3),
                    width: 1,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    controller.minu();
                  },
                  child: Icon(
                    Icons.menu,
                    size: height * 0.03,
                    color: const Color.fromARGB(255, 92, 69, 1),
                  ),
                ),
              );
            },
          ),
        ),

        Positioned(
          top: height * 0.124,
          left: width * 0.43,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            clipBehavior: Clip.hardEdge,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Container(
                height: height * 0.055,
                width: width * 0.55,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(
                      255,
                      102,
                      83,
                      0,
                    ).withOpacity(0.3),
                    width: 2,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color.fromARGB(255, 248, 189, 100).withOpacity(0.2),
                      Colors.white.withOpacity(0.45),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: const Color.fromARGB(255, 92, 69, 1),
                      size: height * 0.02,
                    ),
                    Text(
                      "Alexandria",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 92, 69, 1),
                        fontSize: height * 0.015,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      height: height * 0.035,
                      width: width * 0.007,
                      color: const Color.fromARGB(
                        255,
                        102,
                        83,
                        0,
                      ).withOpacity(0.3),
                    ),
                    SizedBox(
                      width: width * 0.3,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: height * 0.018,
                        ),
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            size: width * 0.08,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: height * 0.018,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
