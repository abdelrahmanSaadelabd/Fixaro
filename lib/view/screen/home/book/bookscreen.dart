import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:Fixaro/view/widget/home/book/mybook.dart';
import 'package:Fixaro/view/widget/home/home/appbar.dart';

class Bookscreen extends StatelessWidget {
  const Bookscreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                top: height * .2,
                child: Column(
                  spacing: height * 0.01,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "🔸My Book",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: height * 0.032,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 2,
                      ),
                    ),
                    mybook(height, width),
                  ],
                ),
              ),

              appbar(width, height),
            ],
          ),
        );
      },
    );
  }
}
