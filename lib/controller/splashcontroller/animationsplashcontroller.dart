import 'package:get/get.dart';
import 'package:Fixaro/view/screen/anboardingscrean/anboardingscrean.dart';

class SlideController extends GetxController {
  var topOffset = (-0.5).obs;
  var topOffall = (-0.0).obs;
  var rightoffset = 1.2.obs;
  var bottomOffset = (-0.5).obs;
  var liftoffset = (-0.5).obs;
  var opthylogo = 0.0.obs;
  var opthytext = 0.0.obs;
  var opthytext2 = 0.0.obs;
  var opthycontaner = 0.0.obs;

  @override
  void onInit() {
    startAnimation();
    super.onInit();
  }

  void startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 300));
    topOffset.value = 0.4;

    await Future.delayed(const Duration(milliseconds: 300));
    rightoffset.value = 0.35;

    await Future.delayed(const Duration(milliseconds: 300));
    bottomOffset.value = 0.454;

    await Future.delayed(const Duration(milliseconds: 300));
    liftoffset.value = 0.225;
    await Future.delayed(const Duration(milliseconds: 1500));
    topOffset.value -= 0.007;
    bottomOffset.value -= 0.007;
    liftoffset.value = 0.28;
    await Future.delayed(const Duration(milliseconds: 1500));

    opthylogo.value = 1.0;
    opthycontaner.value = 1.0;

    await Future.delayed(const Duration(milliseconds: 500));
    topOffall.value -= 0.09;
    await Future.delayed(const Duration(milliseconds: 1000));
    opthytext.value = 1.0;

    await Future.delayed(const Duration(milliseconds: 1200));
    opthytext2.value = 1.0;

    await Future.delayed(const Duration(milliseconds: 1200));
    opthylogo.value = 0.0;

    await Future.delayed(const Duration(milliseconds: 300));
    topOffset.value = 0.4;

    await Future.delayed(const Duration(milliseconds: 300));
    rightoffset.value = 0.35;

    await Future.delayed(const Duration(milliseconds: 300));
    bottomOffset.value = 0.454;

    await Future.delayed(const Duration(milliseconds: 300));
    liftoffset.value = 0.225;
    await Future.delayed(const Duration(milliseconds: 600));

    Get.offAll(
      Anboardingscrean(),
      transition: Transition.circularReveal,
      duration: Duration(seconds: 1),
    );
  }
}
