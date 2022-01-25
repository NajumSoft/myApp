// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:vibration/vibration.dart';

// class screenThree extends StatefulWidget {
//   const screenThree({Key? key}) : super(key: key);

//   @override
//   _screenThreeState createState() => _screenThreeState();
// }

// int counter = 0;
// int target = 5;
// double percentValue = 0;

// class _screenThreeState extends State<screenThree> {
//   getPercentCompeletion() {
//     var multiplyerfactor = 1 / target;
//     setState(() {
//       if (counter >= target || percentValue >= 1) {
//         counter = target;
//         percentValue = 1;
//       } else {
//         counter++;
//         percentValue = counter * multiplyerfactor;
//       }
//       if (counter == target) {
//         // Vibration.vibrate(pattern: [100, 10, 100, 10]);
//         showDialog(
//             context: context,
//             builder: (context) => AlertDialog(
//                   actionsAlignment: MainAxisAlignment.center,
//                   title: Text(
//                     "Target Completed !",
//                     style: TextStyle(color: Colors.grey),
//                   ),
//                   content: Icon(
//                     Icons.thumb_up_alt,
//                     color: Colors.greenAccent,
//                     size: 45,
//                   ),
//                   actions: [
//                     FlatButton(
//                         onPressed: () => {
//                               Navigator.pop(context),
//                             },
//                         child: Text('No')),
//                     FlatButton(
//                         onPressed: () => {
//                               counter = 0,
//                               percentValue = 0,
//                               Navigator.pop(context),
//                               setState(() {})
//                             },
//                         child: Text('Repeat'))
//                   ],
//                 ));
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(),
//           Container(
//             child: CircularPercentIndicator(
//               animation: true,
//               animationDuration: 500,
//               animateFromLastPercent: true,
//               radius: 300,
//               lineWidth: 25,
//               percent: percentValue,
//               circularStrokeCap: CircularStrokeCap.round,
//               progressColor: Colors.deepPurple,
//               backgroundColor: Colors.deepPurple.shade200,
//               center: Text('$counter', style: GoogleFonts.roboto(fontSize: 50)),
//             ),
//           ),
//           InkWell(
//             onTap: () => {},
//             child: Container(
//               height: 300,
//               width: MediaQuery.of(context).size.width,
//               child: ElevatedButton(
//                 onPressed: () => {
//                   getPercentCompeletion(),
//                 },
//                 child: Text('Click me'),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
