import 'package:flutter/material.dart';

button(controller, index, width, height) {
  return Container(
    width: width * 0.25,
    height: height * 0.06,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: controller.selctbutton == index
            ? [
                const Color.fromARGB(255, 241, 173, 71).withOpacity(0.8),
                const Color.fromARGB(255, 92, 69, 1),
              ]
            : [Colors.white.withOpacity(0.15), Colors.white.withOpacity(0.8)],
      ),
      border: Border.all(
        color: const Color.fromARGB(111, 255, 255, 255),
        width: 1,
      ),
    ),
    child: InkWell(
      onTap: () {
        controller.changebutton(index);
      },
      child: Center(
        child: Text(
          "${controller.button[index]}",
          style: TextStyle(
            color: controller.selctbutton == index
                ? Colors.white
                : Colors.black,
          ),
        ),
      ),
    ),
  );
}
