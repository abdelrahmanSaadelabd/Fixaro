import 'package:get/get.dart';

class Homecontroller extends GetxController {
  List offer = [
    {
      "image": "assets/image/o5.jpg",
      "title": "Home Cleaning",
      "subtitle": "Quick & Trusted, easy way for every home.",
      "offer": "40% off",
    },
    {
      "image": "assets/image/o2.jpg",
      "title": "Furniture Moving",
      "subtitle": "Safe&Fast moving service for your home ",
      "offer": "30% off",
    },
    {
      "image": "assets/image/o3.jpg",
      "title": "Garden Care",
      "subtitle": "Keep your garden green & beautiful ",
      "offer": "25% off",
    },
    {
      "image": "assets/image/o1.jpg",
      "title": "Pest Control",
      "subtitle": "Protect your home from pests.",
      "offer": "35% off",
    },
    {
      "image": "assets/image/o4.jpg",
      "title": "Home Care",
      "subtitle": "Trusted helpers to keep your home clean ",
      "offer": "20% off",
    },
    {
      "image": "assets/image/o6.jpg",
      "title": "Home Repair",
      "subtitle": "reliable repairs for every corner of your home.",
      "offer": "45% off",
    },
  ];
  List stars = [
    {
      "image": "assets/image/p4.jfif",
      "name": "Ahmed Nasser",
      "subtitle": "Furniture Moving",
      "price": "100",
      "rate": "⭐⭐⭐⭐⭐ 4.8 out of 5",
    },
    {
      "image": "assets/image/p2.jfif",
      "name": "Sara Mohamed",
      "subtitle": "Home Home Cleaning",
      "price": "250",
      "rate": "⭐⭐⭐⭐ 4.5 out of 5",
    },
    {
      "image": "assets/image/p3.jfif",
      "name": "Omar Khaled",
      "subtitle": "Garden Care",
      "price": "50",
      "rate": "⭐⭐⭐⭐⭐ 4.9 out of 5",
    },
    {
      "image": "assets/image/p1.jfif",
      "name": "Abdo saad",
      "subtitle": "Home Repair",
      "price": "300",
      "rate": "⭐⭐⭐⭐ 4.6 out of 5",
    },
  ];

  int currentIndex = 0;
  double opacity = 0.0;
  double offsetY = 0.3;

  @override
  void onInit() {
    super.onInit();
    startAnimation();
  }

  void startAnimation() async {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 200));
      opacity = 1.0;
      update();

      await Future.delayed(const Duration(seconds: 3));

      opacity = 0.0;
      update();

      await Future.delayed(const Duration(milliseconds: 400));

      currentIndex++;
      if (currentIndex >= offer.length) currentIndex = 0;
    }
  }
}
