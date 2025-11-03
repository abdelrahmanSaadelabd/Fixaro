import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:Fixaro/view/widget/person/appbar.dart';
import 'package:Fixaro/view/widget/person/person.dart';
import 'package:Fixaro/controller/catecontroller/catecontroller.dart';

class Personscreen extends StatelessWidget {
  const Personscreen({super.key});

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

              Positioned(top: height * 0.13, child: person(height, width)),

              appbarpreson(width, height, ),
            ],
          ),
        );
      },
    );
  }
}
