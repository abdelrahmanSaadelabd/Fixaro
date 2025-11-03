import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:Fixaro/controller/homecontroller/homecontroller.dart';

Widget offer(homecontroller, double width, double height) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(50),

    child: Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.only(left: width * 0.65, top: height * 0.02),
            width: width * .2,
            height: height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromARGB(43, 255, 255, 255),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: width * .75,
            height: height * 0.29,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromARGB(55, 255, 255, 255),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: SizedBox(
            width: width * .8,
            height: height * 0.29,
            child: GetBuilder<Homecontroller>(
              builder: (controller) {
                return PageView.builder(
                  itemCount: controller.offer.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return AnimatedOpacity(
                      opacity: controller.opacity,
                      duration: const Duration(milliseconds: 500),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),

                        child: Container(
                          width: width * .8,
                          height: height * 0.29,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(55, 255, 255, 255),
                            image: DecorationImage(
                              image: AssetImage(
                                controller.offer[controller
                                    .currentIndex]['image'],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: height * 0.12,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.25),
                                        spreadRadius: 0,
                                        blurRadius: 10,
                                        offset: const Offset(0, 4),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Positioned(
                                bottom: height * 0.01,
                                left: width * 0.05,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      textAlign: TextAlign.start,

                                      "${controller.offer[controller.currentIndex]['title']}",
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
                                      "${controller.offer[controller.currentIndex]['subtitle']}",
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: height * 0.015,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    bottom: height * 0.02,
                                    right: width * 0.02,
                                  ),
                                  width: width * 0.1,
                                  height: height * 0.06,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.white.withOpacity(0.2),
                                        Colors.white.withOpacity(0.4),
                                      ],
                                    ),
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.4),
                                      width: 1,
                                    ),
                                  ),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.date_range_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  margin: EdgeInsets.only(
                                    top: height * 0.02,
                                    left: width * 0.02,
                                  ),
                                  width: width * 0.22,
                                  height: height * 0.035,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        const Color.fromARGB(
                                          255,
                                          70,
                                          70,
                                          70,
                                        ).withOpacity(0.2),
                                        const Color.fromARGB(
                                          255,
                                          61,
                                          61,
                                          61,
                                        ).withOpacity(0.4),
                                      ],
                                    ),
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.4),
                                      width: 1,
                                    ),
                                  ),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Center(
                                      child: Text(
                                        textAlign: TextAlign.start,

                                        "${controller.offer[controller.currentIndex]['offer']}",
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          decoration: TextDecoration.none,
                                          fontSize: height * 0.022,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    ),
  );
}
