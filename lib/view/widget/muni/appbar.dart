import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:Fixaro/view/widget/home/home/logohome.dart';

Widget appbarminu(width, height) {
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
          top: height * .069,
          right: width * 0.3,
          child: Shimmer.fromColors(
            baseColor: const Color.fromARGB(255, 87, 71, 1),
            highlightColor: const Color.fromARGB(255, 184, 178, 155),

            child: Text(
              "Fixaro",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: height * 0.03,
                fontWeight: FontWeight.bold,
                color: Colors.amber.shade100.withOpacity(0.9),
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
