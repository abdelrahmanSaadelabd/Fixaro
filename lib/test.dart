// import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/simple/get_state.dart';
// import 'package:get/instance_manager.dart';
// import 'package:get/utils.dart';

// import 'package:Fixaro/controller/core/functions/handling_data_view.dart';
// import 'package:Fixaro/controller/test_controller.dart';

// class Test extends StatelessWidget {
//   const Test({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(TestController());
//     return Scaffold(
//       appBar: AppBar(),
//       body: GetBuilder<TestController>(
//         builder: (controller) {
//           return HandlingDataView(
//             statusRequst: controller.statusRequst,
//             widget: ListView.builder(
//               itemCount: controller.data.length,
//               itemBuilder: (context, index) {
//                 return Text("${controller.data}");
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
