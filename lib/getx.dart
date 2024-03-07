// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:learning_provider/getx_exaple.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Example gett = Get.put(Example());
//     return Scaffold(
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Text('getX'),
//           Obx(() => Column(
//                 children: [
//                   gett.sing == true
//                       ? Icon(Icons.verified_user_outlined)
//                       : CircularProgressIndicator(),
//                   Container(
//                     color: gett.sing == true ? Colors.blue : Colors.red,
//                     child: TextButton(
//                       onPressed: () {
//                         gett.valueChange();
//                       },
//                       child: gett.sing == true ? Text('start') : Text('stop'),
//                     ),
//                   ),
//                 ],
//               ))
//         ]),
//       ),
//     );
//   }
// }
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_provider/getx_exaple.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log('message');
    final Example gett = Get.put(Example());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('getX'),
            Obx(() => Column(
                  children: [
                    gett.sing == true
                        ? Icon(Icons.verified_user_outlined)
                        : CircularProgressIndicator(),
                    Container(
                      color: gett.sing == true ? Colors.blue : Colors.red,
                      child: TextButton(
                        onPressed: () {
                          gett.valueChange(); // Corrected method name
                        },
                        child: gett.sing == true ? Text('start') : Text('stop'),
                      ),
                    ),
                  ],
                )),
            Obx(() => Column(
                  children: [
                    gett.sing == true ? Text('hello') : Text('hey'),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
