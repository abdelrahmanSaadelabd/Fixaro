import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

Widget chats(height, width) {
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
                Get.toNamed("/chat");
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                  child: Container(
                    margin: EdgeInsets.only(bottom: height * 0.01),
                    width: width * 0.9,
                    height: height * 0.1,
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
                        Row(
                          spacing: width * 0.04,

                          children: [
                            Container(
                              width: width * 0.2,
                              height: height * 0.1,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
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
                                  spacing: width * 0.19,

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
                                      Icons.chat,
                                      size: height * 0.03,
                                      color: index != 0
                                          ? const Color.fromARGB(
                                              255,
                                              59,
                                              59,
                                              59,
                                            )
                                          : Colors.green,
                                    ),
                                  ],
                                ),
                                Container(
                                  width: width * 0.6,
                                  child: Text(
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    maxLines: 1,
                                    "Your custom woodwork is in progress. Thank you for trusting my craft",
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: height * 0.02,
                                      fontWeight: FontWeight.w400,
                                      color: index != 0
                                          ? const Color.fromARGB(
                                              255,
                                              59,
                                              59,
                                              59,
                                            )
                                          : Colors.red,
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
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
