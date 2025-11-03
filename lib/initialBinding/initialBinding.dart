import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:Fixaro/controller/mapcontroller/mapcontroller.dart';
import 'package:Fixaro/controller/catecontroller/catecontroller.dart';
import 'package:Fixaro/controller/homecontroller/homecontroller.dart';
import 'package:Fixaro/controller/homecontroller/navbarcontroller.dart';
import 'package:Fixaro/controller/homecontroller/profilecontroller.dart';
import 'package:Fixaro/controller/workercontroller/workercontroller.dart';
import 'package:Fixaro/controller/splashcontroller/animationsplashcontroller.dart';
import 'package:Fixaro/controller/authcontroller/logincontroller/logincontroller.dart';
import 'package:Fixaro/controller/authcontroller/singupcontroller/singupcontroller.dart';

class initialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SlideController(), fenix: true);
    Get.lazyPut(() => Logincontroller(), fenix: true);
    Get.lazyPut(() => Singupcontroller(), fenix: true);
    Get.lazyPut(() => Homecontroller(), fenix: true);
    Get.lazyPut(() => Navbarcontroller(), fenix: true);
    Get.lazyPut(() => Catecontroller(), fenix: true);
    Get.lazyPut(() => MapControllerX(), fenix: true);
    Get.lazyPut(() => Workercontroller(), fenix: true);
    Get.lazyPut(() => Profilecontroller(), fenix: true);
  }
}
