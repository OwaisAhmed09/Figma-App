// import 'package:flutter/material.dart';
// import 'package:newapp/utils/color_constants.dart';

// class StackView extends StatefulWidget {
//   const StackView({super.key});

//   @override
//   State<StackView> createState() => _StackViewState();
// }

// class _StackViewState extends State<StackView> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             Container(
//               height: 200,
//               width: 200,
//               color: ColorConstants.primaryColor,
//             ),
//             Positioned(
//               right: 0,
//               top: 0,
//               child: Container(
//                 height: 100,
//                 width: 100,
//                 color: ColorConstants.yellowColor,
//               ),
//             ),
//             Positioned(
//               top: 0,
//               left: 0,
//               child: Container(
//                 height: 50,
//                 width: 50,
//                 color: ColorConstants.blueColor,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
