import 'package:flutter/material.dart';
import 'package:Fixaro/controller/core/constant/image.dart';

class Singuplogo extends StatelessWidget {
  final height;
  final width;
  const Singuplogo({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Positioned(
            top: height * 0.045,
            right: width * 0.53,
            child: SizedBox(
              width: width * 0.2,
              height: height * .08,

              child: Image.asset(APPimage.logotop, fit: BoxFit.fill),
            ),
          ),
          Positioned(
            top: height * 0.045,
            right: width * 0.53,

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
          ),

          Positioned(
            top: height * 0.045,
            right: width * 0.53,
            child: SizedBox(
              width: width * 0.2,
              height: height * .08,
              child: Image.asset(APPimage.logobottom, fit: BoxFit.fill),
            ),
          ),
        ],
      ),
    );
  }
}
