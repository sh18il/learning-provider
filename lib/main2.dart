// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'provider.dart';

// // void main() {
// //   return runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       theme: ThemeData.light(),
// //       home: HomePage(),
// //     );
// //   }
// // }

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     log('message');
   
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Consumer<NumbeListProvider>(builder: (context, pro, _) {
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               pro.isicon == true
//                   ? Icon(Icons.verified_user_rounded)
//                   : CircularProgressIndicator(),
//               const SizedBox(
//                 height: 30,
//               ),
//               Container(
//                   color: pro.isicon == true ? Colors.blue : Colors.red,
//                   child: TextButton(
//                     onPressed: () {
//                       pro.changeValue();
//                     },
//                     child: pro.isicon == true ? Text('start') : Text('stop'),
//                   )),
//             ],
//           );
//         }),
//       ),
//     );
//   }
// }
