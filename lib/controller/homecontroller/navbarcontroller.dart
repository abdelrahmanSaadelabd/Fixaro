import 'package:get/state_manager.dart';
import 'package:Fixaro/view/screen/home/homescreen.dart';
import 'package:Fixaro/view/screen/home/profile/profile.dart';
import 'package:Fixaro/view/screen/home/chat/chatscreen.dart';
import 'package:Fixaro/view/screen/home/save/savescreen.dart';
import 'package:Fixaro/view/screen/home/book/bookscreen.dart';

class Navbarcontroller extends GetxController {
  var cont1 = -0.5;
  var cont2 = -0.5;
  var cont3 = 0.0;
  var cont2top = .92;
  var cont1top = .92;
  var cont3top = .915;
  double allnavh = 1;
  double allnavw = 1;
  double allnavtop = 0.0;
  double allnavrite = 0.0;
  var cruntpage = 0;
  double closeminuh = 0;
  double closeminuw = 0;
  List page = [];
  var isLoading = true;

  @override
  void onInit() {
    startAnimation();
    super.onInit();
  }

  Future<void> startAnimation() async {
    page = [
      Homescreen(),
      Savescreen(),
      Chatscreen(),
      Profilescreen(),
      Bookscreen(),
    ];
    update();

    // Show loading for a second
    await Future.delayed(Duration(seconds: 2));

    isLoading = false;
    update();

    await Future.delayed(Duration(milliseconds: 800));
    cont3 = 1;
    update();

    await Future.delayed(Duration(milliseconds: 800));
    cont1 = 0.03;
    update();

    await Future.delayed(Duration(milliseconds: 200));
    cont2 = 0.03;
    update();
  }

  channgpage(int v) {
    cruntpage = v;
    update();
  }

  void minu() {
    closeminuh = .9;
    closeminuw = 0.9;
    allnavw = .9;

    allnavh = .9;
    allnavrite = 0.6;
    allnavtop = 0.05;
    cont1top = .84;
    cont2top = .84;
    cont3top = .83;

    update();
  }

  void closeminu() {
    closeminuh = 0;
    closeminuw = 0;
    allnavw = 1;

    allnavh = 1;
    allnavrite = 0.0;
    allnavtop = 0.0;
    cont1top = .92;
    cont2top = .92;
    cont3top = .915;

    update();
  }
}
