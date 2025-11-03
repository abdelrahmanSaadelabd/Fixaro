import 'package:get/get.dart';
import 'package:flutter/material.dart';

Widget appbarworker(width, height, name) {
  return Container(
    width: width,
    height: height * 0.15,
    decoration: BoxDecoration(
      color: Colors.transparent,
      // boxShadow: [
      //   BoxShadow(
      //     color: Color.fromARGB(87, 255, 145, 0),
      //     spreadRadius: 40,
      //     blurRadius: 150,
      //   ),
      // ],
    ),
    child: Stack(
      children: [
        Positioned(
          top: height * .055,
          left: width * 0.25,
          child: Text(
            name,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: height * 0.045,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 87, 71, 1),
              letterSpacing: 2,
            ),
          ),
        ),

        Align(
          alignment: Alignment.topLeft,
          child: Container(
            margin: EdgeInsets.only(top: height * 0.06, left: width * 0.0),
            width: width * 0.25,
            height: height * 0.06,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(117, 255, 255, 255),
                  const Color.fromARGB(19, 255, 255, 255),
                ],
              ),
              border: Border.all(
                color: const Color.fromRGBO(255, 255, 255, 1).withOpacity(0.3),
                width: 1,
              ),
            ),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            margin: EdgeInsets.only(top: height * 0.06, right: width * 0.0),
            width: width * 0.25,
            height: height * 0.06,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color.fromARGB(117, 255, 255, 255),
                  const Color.fromARGB(19, 255, 255, 255),
                ],
              ),
              border: Border.all(
                color: const Color.fromARGB(
                  255,
                  255,
                  255,
                  255,
                ).withOpacity(0.3),
                width: 1,
              ),
            ),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.menu,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
