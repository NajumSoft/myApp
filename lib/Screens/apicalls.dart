// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class apiCall extends StatefulWidget {
//   const apiCall({Key? key}) : super(key: key);

//   @override
//   _apiCallState createState() => _apiCallState();
// }

// class _apiCallState extends State<apiCall> {
//   fetchData() async {
//     var response = await http
//         .get(Uri.http('www.najumsons.com', '/track/validateproduct/nac101'));
//     print(response.body);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Container(
//             child: Text('welcome'),
//           ),
//           Container(
//             child: ElevatedButton(
//               onPressed: () => {fetchData()},
//               child: Text('fetch Data'),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
