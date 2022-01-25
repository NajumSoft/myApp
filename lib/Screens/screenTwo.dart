// import 'package:flutter/material.dart';
// import 'package:percent_indicator/percent_indicator.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
// import 'package:http/http.dart' as http;

// class screenTwo extends StatefulWidget {
//   @override
//   _screenTwoState createState() => _screenTwoState();
// }

// class _screenTwoState extends State<screenTwo> {
//   var number = '03219361186';
//   TextEditingController mycontroller = TextEditingController();
//   double val = 0.1;
//   String valueShow = '%';
//   _increaseValue() {
//     setState(() {
//       number = mycontroller.text;
//       val = val + .05;
//       var i = val * 100;
//       valueShow = i.toString();
//       FlutterPhoneDirectCaller.callNumber(number);
//       // launch('tel://$number');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       children: [
//         TextField(
//             controller: mycontroller,
//             keyboardType: TextInputType.phone,
//             decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 label: Text('Phone'),
//                 hintText: 'phone number')),
//         SizedBox(
//           height: 40,
//         ),
//         ElevatedButton(
//             onPressed: () async {
//               _increaseValue();
//             },
//             child: Text('Call')),
//         Container(),
//       ],
//     ));
//   }
// }
