import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:Fixaro/controller/homecontroller/homecontroller.dart';

Widget appstars(height, width) {
  return GetBuilder<Homecontroller>(
    builder: (controller) {
      return Column(
        children: [
          Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: SizedBox(
              height: height * .565,
              width: width,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: false,
                itemCount: controller.stars.length,
                itemBuilder: (context, index) => Center(
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
                              const Color.fromARGB(
                                255,
                                255,
                                255,
                                255,
                              ).withOpacity(0.1),
                              const Color.fromARGB(
                                255,
                                255,
                                255,
                                255,
                              ).withOpacity(0.2),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: width * 0.3,
                                    height: height * 0.16,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          "${controller.stars[index]["image"]}",
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: height * 0.004,
                                    children: [
                                      Text(
                                        textAlign: TextAlign.start,

                                        "${controller.stars[index]["name"]}",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: height * 0.028,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      Text(
                                        textAlign: TextAlign.start,
                                        "${controller.stars[index]["subtitle"]}",
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                          fontSize: height * 0.02,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        textAlign: TextAlign.start,
                                        "${controller.stars[index]["rate"]}",
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
                                            "\$${controller.stars[index]["price"]}",
                                            style: TextStyle(
                                              decoration: TextDecoration.none,
                                              fontSize: height * 0.025,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),

                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              30,
                                            ),
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
                                                      ).withOpacity(0.2),
                                                      const Color.fromARGB(
                                                        255,
                                                        255,
                                                        255,
                                                        255,
                                                      ).withOpacity(0.2),
                                                    ],
                                                  ),
                                                  border: Border.all(
                                                    color: Colors.white
                                                        .withOpacity(0.2),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    textAlign: TextAlign.start,
                                                    "Booking Now",
                                                    style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      fontSize: height * 0.015,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.white,
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
          SizedBox(height: height * 0.3),
        ],
      );
    },
  );
}
