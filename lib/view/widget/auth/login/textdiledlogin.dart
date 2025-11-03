import 'dart:ui';
import 'package:flutter/material.dart';

Widget textfiledfixaro(
  final double width,
  final double height,
  final hintText,
  final bool obscureText,
) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(25),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * .03),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.08),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.white.withOpacity(0.2)),
          ),
          child: TextField(
            obscureText: obscureText,
            cursorColor: Colors.white,

            style: const TextStyle(color: Colors.white, fontSize: 16),
            decoration: InputDecoration(
              prefixIcon: const Icon(
                Icons.email_rounded,
                color: const Color.fromARGB(255, 175, 158, 115),
              ),

              hintText: hintText,
              hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: height * .02),
            ),
          ),
        ),
      ),
    ),
  );
}
