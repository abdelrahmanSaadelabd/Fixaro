import 'package:Fixaro/view/screen/cate/cate.dart';
import 'package:Fixaro/view/screen/home/navbar.dart';
import 'package:Fixaro/view/screen/workers/worker.dart';
import 'package:Fixaro/view/screen/auth/loginscreen.dart';
import 'package:Fixaro/view/screen/auth/singupscreen.dart';
import 'package:Fixaro/view/screen/auth/forgetpassword.dart';
import 'package:Fixaro/view/screen/workers/personscreen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:Fixaro/view/screen/splashscreen/splashcreen.dart';
import 'package:Fixaro/view/screen/home/chat/converstionscreen.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:Fixaro/view/screen/anboardingscrean/anboardingscrean.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => Splashcreen()),
  GetPage(name: "/anboiarding", page: () => Anboardingscrean()),
  GetPage(name: "/loginscren", page: () => Loginscreen()),
  GetPage(name: "/loginscren", page: () => Loginscreen()),
  GetPage(
    name: "/singupscreen",
    page: () => Singupscreen(),
    transition: Transition.fade,
    transitionDuration: Duration(milliseconds: 400),
  ),
  GetPage(
    name: "/forgetpassword",
    page: () => Forgetpassword(),
    transition: Transition.fade,
    transitionDuration: Duration(milliseconds: 400),
  ),
  GetPage(
    name: "/cate",
    page: () => Catescreen(),
    transition: Transition.fade,
    transitionDuration: Duration(milliseconds: 400),
  ),
  GetPage(
    name: "/nav",
    page: () => Navbar(),
    transition: Transition.fade,
    transitionDuration: Duration(milliseconds: 400),
  ),
  GetPage(
    name: "/person",
    page: () => Personscreen(),
    transition: Transition.fade,
    transitionDuration: Duration(milliseconds: 400),
  ),
  GetPage(
    name: "/worker",
    page: () => Workerscreen(),
    transition: Transition.fade,
    transitionDuration: Duration(milliseconds: 400),
  ),
  GetPage(
    name: "/chat",
    page: () => Converstionscreen(),
    transition: Transition.fade,
    transitionDuration: Duration(milliseconds: 400),
  ),
];
