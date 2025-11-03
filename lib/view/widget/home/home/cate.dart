import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

Widget cate(categories, width, height) {
  return SizedBox(
    width: width,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...List.generate(categories.length, (i) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed("/cate");
                    },
                    child: Container(
                      width: width * 0.18,
                      height: width * 0.18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color.fromARGB(
                              255,
                              235,
                              188,
                              118,
                            ).withOpacity(0.25),
                            Colors.white.withOpacity(0.9),
                          ],
                        ),
                        border: Border.all(
                          color: const Color.fromARGB(
                            255,
                            102,
                            83,
                            0,
                          ).withOpacity(0.6),
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          categories[i]["icon"]!,
                          width: width * 0.1,
                          height: height * 0.05,
                          fit: BoxFit.contain,
                          color: const Color.fromARGB(255, 92, 69, 1),
                        ),
                      ),
                    ),
                  ),

                  Text(
                    "${categories[i]["name"]}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: height * 0.019,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            );
          }),
        ],
      ),
    ),
  );
}
