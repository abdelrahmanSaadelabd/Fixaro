import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:Fixaro/view/widget/home/home/caht/conversion/appbar.dart';

class Converstionscreen extends StatelessWidget {
  const Converstionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController controller = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (controller.hasClients) {
        controller.jumpTo(controller.position.minScrollExtent);
      }
    });
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
                alignment: AlignmentGeometry.bottomCenter,
                child: Opacity(
                  opacity: 0.17,
                  child: SizedBox(
                    width: width,
                    height: height * 0.8679,
                    child: Image.asset(
                      "assets/image/backgroundchat.png",
                      fit: BoxFit.cover,
                    ),
                  ),
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
                top: height * .136,
                child: SizedBox(
                  height: height,
                  width: width,
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    resizeToAvoidBottomInset: true,
                    body: Column(
                      spacing: height * 0.0,
                      children: [
                        SizedBox(
                          height: height * 0.76,
                          width: width,
                          child: ListView.builder(
                            controller: controller,
                            reverse: true,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: index == 1
                                      ? AlignmentGeometry.centerLeft
                                      : AlignmentGeometry.centerRight,
                                  child: Container(
                                    width: width * 0.6,
                                    decoration: BoxDecoration(
                                      color: index == 1
                                          ? const Color.fromARGB(
                                              132,
                                              255,
                                              255,
                                              255,
                                            )
                                          : const Color.fromARGB(
                                              122,
                                              134,
                                              99,
                                              0,
                                            ),
                                      borderRadius: index == 1
                                          ? BorderRadius.only(
                                              bottomRight: Radius.circular(50),
                                              topLeft: Radius.circular(50),
                                              topRight: Radius.circular(50),
                                            )
                                          : BorderRadius.only(
                                              bottomLeft: Radius.circular(50),
                                              topLeft: Radius.circular(50),
                                              topRight: Radius.circular(50),
                                            ),
                                    ),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(height * .02),
                                        child: index == 1
                                            ? Text(
                                                overflow: TextOverflow.clip,
                                                textAlign: TextAlign.start,
                                                "Your custom woodwork is in progress. Thank you for trusting my craft",
                                                style: TextStyle(
                                                  fontSize: width * 0.05,
                                                ),
                                              )
                                            : Text(
                                                overflow: TextOverflow.clip,
                                                textAlign: TextAlign.start,
                                                "Well, thank you",
                                                style: TextStyle(
                                                  fontSize: width * 0.05,
                                                ),
                                              ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Align(
                          alignment: AlignmentGeometry.bottomCenter,
                          child: Container(
                            height: height * 0.08,
                            width: width * 0.9,

                            decoration: BoxDecoration(
                              color: const Color.fromARGB(162, 255, 254, 253),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: width * .035,
                              ),
                              child: Row(
                                spacing: width * 0.05,
                                children: [
                                  Icon(
                                    Icons.add_a_photo_outlined,
                                    color: const Color.fromARGB(255, 92, 69, 1),
                                    size: height * 0.04,
                                  ),
                                  SizedBox(
                                    width: width * 0.55,
                                    child: TextField(
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: height * 0.018,
                                      ),
                                      cursorColor: Colors.black,
                                      decoration: InputDecoration(
                                        hintText: "Send Massage",
                                        hintStyle: TextStyle(
                                          color: Colors.black.withOpacity(0.6),
                                          fontSize: height * 0.018,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.multitrack_audio_rounded,
                                    color: const Color.fromARGB(255, 92, 69, 1),
                                    size: height * 0.04,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              appbarconverstion(width, height),
            ],
          ),
        );
      },
    );
  }
}
