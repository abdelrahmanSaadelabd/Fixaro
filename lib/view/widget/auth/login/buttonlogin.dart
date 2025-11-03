import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:flutter/material.dart';

Widget buttonapp(width, height, name) {
  return Material(
    borderRadius: BorderRadius.all(Radius.circular(50)),
    child: InkWell(
      onTap: () => Get.offAllNamed("/nav"),
      child: Container(
        width: width * .5,
        height: height * 0.05,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(171, 0, 0, 0).withOpacity(0.2),
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ],
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 97, 58, 7),
              const Color.fromARGB(255, 156, 93, 11),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              fontSize: height * .025,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 255, 250, 237).withOpacity(0.9),
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    ),
  );
}
