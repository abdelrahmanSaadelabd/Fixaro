import 'package:get/get.dart';

class Logincontroller extends GetxController {
  var topOffset = (0.4).obs;
  var rightoffset = 0.35.obs;
  var righall = 0.0.obs;
  var bottomOffset = (0.54).obs;
  var liftoffset = (.4).obs;
  var opthylogo = 0.0.obs;
  var opthytext = 0.0.obs;
  var cont = 0.0.obs;

  @override
  void onInit() {
    startAnimation();
    super.onInit();
  }

  void startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    topOffset.value -= 0.007;
    bottomOffset.value -= 0.007;
    liftoffset.value = 0.45;
    await Future.delayed(const Duration(milliseconds: 800));

    opthylogo.value = 1.0;

    await Future.delayed(const Duration(milliseconds: 800));

    righall.value = 0.22;
    await Future.delayed(const Duration(milliseconds: 800));

    opthytext.value = 1.0;
    await Future.delayed(const Duration(milliseconds: 800));
    cont.value = 1.0;
  }
}
