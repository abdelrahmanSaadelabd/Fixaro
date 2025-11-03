import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

Widget appbarconverstion(width, height) {
  return Container(
    width: width,
    height: height * 0.19,
    decoration: BoxDecoration(
      color: Colors.transparent,
      boxShadow: [
        BoxShadow(
          color: Color.fromARGB(146, 255, 145, 0),
          spreadRadius: 80,
          blurRadius: 150,
        ),
      ],
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Positioned(
              top: height * .055,
              right: width * 0.28,
              child: Text(
                "abdo saad",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: height * 0.04,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 87, 71, 1),
                  letterSpacing: 2,
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
                      Color.fromARGB(146, 255, 145, 0).withOpacity(0.2),
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
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: height * 0.03,

                    color: const Color.fromARGB(255, 92, 69, 1),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(10000),
                  child: Container(
                    margin: EdgeInsets.only(
                      right: width * 0.01,
                      top: height * 0.05,
                    ),
                    width: width * 0.22,
                    height: height * 0.07,
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/image/pr1.jpg"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: const Color.fromARGB(31, 102, 83, 0),
          height: height * 0.02,
          thickness: 3,
        ),
      ],
    ),
  );
}
