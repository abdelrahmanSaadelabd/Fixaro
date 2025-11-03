import 'package:flutter/material.dart';
import 'package:Fixaro/controller/core/constant/image.dart';

class Logohome extends StatelessWidget {
  final height;
  final width;
  const Logohome({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: height * 0.05,
            right: width * 0.55,
            child: SizedBox(
              width: width * 0.14,
              height: height * .06,

              child: Image.asset(
                APPimage.logotop,
                fit: BoxFit.fill,
                color: const Color.fromARGB(255, 92, 69, 1),
              ),
            ),
          ),
          Positioned(
            top: height * 0.05,
            right: width * 0.55,

            child: SizedBox(
              width: width * 0.14,
              height: height * .06,

              child: Image.asset(
                APPimage.logocentr,
                fit: BoxFit.fill,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),

          Positioned(
            top: height * 0.05,
            right: width * 0.55,
            child: SizedBox(
              width: width * 0.14,
              height: height * .06,
              child: Image.asset(
                APPimage.logobottom,
                fit: BoxFit.fill,
                color: const Color.fromARGB(255, 92, 69, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
