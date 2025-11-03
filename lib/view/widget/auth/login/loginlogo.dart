import 'package:flutter/material.dart';
import 'package:Fixaro/controller/core/constant/image.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class Loginlogo extends StatelessWidget {
  final slideController;
  final height;
  final width;
  const Loginlogo({super.key, this.slideController, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return AnimatedPositioned(
        duration: Duration(milliseconds: 800),
        bottom: height * .34,
        right: width * slideController.righall.value,
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            children: [
              Obx(() {
                return AnimatedPositioned(
                  duration: Duration(milliseconds: 800),
                  top: height * slideController.topOffset.value,
                  right: width * slideController.rightoffset.value,
                  child: SizedBox(
                    width: width * 0.2,
                    height: height * .08,

                    child: Image.asset(APPimage.logotop, fit: BoxFit.fill),
                  ),
                );
              }),
              Positioned(
                top: height * 0.39,
                right: width * 0.35,
                child: Obx(() {
                  return AnimatedOpacity(
                    curve: Curves.bounceInOut,

                    duration: Duration(milliseconds: 800),
                    opacity: slideController.opthylogo.value,
                    child: SizedBox(
                      width: width * 0.2,
                      height: height * .08,

                      child: Image.asset(
                        APPimage.logocentr,
                        fit: BoxFit.fill,
                        color: const Color.fromARGB(
                          255,
                          255,
                          238,
                          175,
                        ).withOpacity(0.9),
                      ),
                    ),
                  );
                }),
              ),
              Obx(() {
                return AnimatedPositioned(
                  duration: Duration(milliseconds: 800),
                  bottom: height * slideController.bottomOffset.value,
                  left: width * slideController.liftoffset.value,
                  child: SizedBox(
                    width: width * 0.2,
                    height: height * .08,
                    child: Image.asset(APPimage.logobottom, fit: BoxFit.fill),
                  ),
                );
              }),
            ],
          ),
        ),
      );
    });
  }
}
