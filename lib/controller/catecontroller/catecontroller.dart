import 'package:get/get.dart';

class Catecontroller extends GetxController {
  List catef = [];
  bool isLoading = true;
  @override
  void onInit() {
    startpage();
    super.onInit();
  }

  startpage() async {
    update();
    await Future.delayed(Duration(milliseconds: 1500));
    catef = [
      {
        "image": "assets/image/f8.png",
        "title": "Carpenter",
        "subtitle": "Crafted with precision, built to last",
      },
      {
        "image": "assets/image/f5.png",
        "title": "Metalworker",
        "subtitle": "Strength in every spark",
      },
      {
        "image": "assets/image/f3.png",
        "title": "Painter & Decorator",
        "subtitle": "Adding color to your world",
      },
      {
        "image": "assets/image/f7.png",
        "title": "Plumber",
        "subtitle": "Fixing leaks, restoring comfort",
      },
      {
        "image": "assets/image/f2.png",
        "title": "Plasterer",
        "subtitle": "Smooth walls, perfect finish",
      },
      {
        "image": "assets/image/f6.png",
        "title": "Electrician",
        "subtitle": "Powering your home safely and smartly",
      },

      {
        "image": "assets/image/f4.png",
        "title": "Aluminum Worker",
        "subtitle": "Shaping light, strength, and style ",
      },

      {
        "image": "assets/image/f1.png",
        "title": "Builder",
        "subtitle": "Building dreams brick by brick",
      },
    ];

    isLoading = false;
    update();
  }
}
