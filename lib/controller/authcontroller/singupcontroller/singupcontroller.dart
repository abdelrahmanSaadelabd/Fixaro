import 'package:get/get.dart';

class Singupcontroller extends GetxController {
  var cont = 0.0.obs;

  @override
  void onInit() {
    startAnimation();
    super.onInit();
  }

  void startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    cont.value = 1.0;
  }
}
