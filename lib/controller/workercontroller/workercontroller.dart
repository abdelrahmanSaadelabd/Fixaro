import 'package:get/get_state_manager/get_state_manager.dart';

class Workercontroller extends GetxController {
  int? selctbutton;
  List button = ["Premium", "Classic"];
  double imagetrans = 2.5;
  double conopicty = 0.0;
  double con2opicty = 0.0;
  @override
  void onInit() {
    startanimation();
    super.onInit();
  }

  void changebutton(val) {
    selctbutton = val;
    update();
  }

  void startanimation() async {
    await Future.delayed(Duration(microseconds: 800));
    imagetrans = 1;
    update();
    await Future.delayed(Duration(milliseconds: 850));

    conopicty = 1;
    update();
    await Future.delayed(Duration(milliseconds: 500));

    con2opicty = 1;
    update();
  }

  @override
  void dispose() {
    startanimation();

    super.dispose();
  }
}
