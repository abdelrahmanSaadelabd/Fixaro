import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

Widget save(height, width) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    spacing: height * 0.02,
    children: [
      SizedBox(
        height: height * 0.68,
        width: width,
        child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: false,
          itemCount: 10,
          itemBuilder: (context, index) => Center(
            child: InkWell(
              onTap: () {
                Get.toNamed("/worker");
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                  child: Container(
                    margin: EdgeInsets.only(bottom: height * 0.01),
                    width: width * 0.9,
                    height: height * 0.18,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          const Color.fromARGB(103, 255, 255, 255),
                          const Color.fromARGB(19, 134, 134, 134),
                        ],
                      ),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.4),
                        width: 1,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: width * 0.3,
                                height: height * 0.16,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: AssetImage("assets/image/pr1.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                spacing: height * 0.004,
                                children: [
                                  Row(
                                    spacing: width * 0.05,
                                    children: [
                                      Text(
                                        textAlign: TextAlign.start,

                                        "Abdo Saad",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: height * 0.028,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          letterSpacing: 1,
                                        ),
                                      ),

                                      Icon(
                                        Icons.bookmark,
                                        size: height * 0.04,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    spacing: width * 0.05,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        textAlign: TextAlign.start,
                                        "Carpenter",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: height * 0.02,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        textAlign: TextAlign.start,
                                        "400 /M",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: height * 0.02,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    textAlign: TextAlign.start,
                                    "⭐⭐⭐⭐⭐ 4.8 out of 5",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: height * 0.015,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    spacing: width * 0.02,
                                    children: [
                                      Text(
                                        textAlign: TextAlign.start,
                                        "\$250",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: height * 0.025,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),

                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: BackdropFilter(
                                          filter: ImageFilter.blur(
                                            sigmaX: 25,
                                            sigmaY: 25,
                                          ),
                                          child: Container(
                                            width: width * 0.28,
                                            height: height * 0.05,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.topRight,
                                                end: Alignment.bottomLeft,
                                                colors: [
                                                  const Color.fromARGB(
                                                    255,
                                                    255,
                                                    255,
                                                    255,
                                                  ).withOpacity(0.4),
                                                  const Color.fromARGB(
                                                    255,
                                                    255,
                                                    255,
                                                    255,
                                                  ).withOpacity(0.1),
                                                ],
                                              ),
                                              border: Border.all(
                                                color: Colors.white.withOpacity(
                                                  0.2,
                                                ),
                                                width: 1,
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                textAlign: TextAlign.start,
                                                "Booking",
                                                style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: height * 0.015,
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromARGB(
                                                    255,
                                                    0,
                                                    0,
                                                    0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
