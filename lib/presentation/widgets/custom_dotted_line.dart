// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/material.dart';
//
// class CustomDottedLine extends StatelessWidget {
//   const CustomDottedLine({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: DottedBorder(
//           color: Colors.black, // 점선 색상
//           strokeWidth: 2, // 선 두께
//           dashPattern: [5, 5], // 점선 길이, 간격
//           customPath: (size) => Path()
//             ..moveTo(0, size.height / 2) // 시작점
//             ..lineTo(size.width, size.height / 2), // 끝점 (수평선)
//           child: SizedBox(width: 200, height: 10), // 선 길이 조정
//         ),
//       ),
//     );
//   }
// }