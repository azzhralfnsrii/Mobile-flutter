// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:rumah_sakit/views/pasien/pasien.dart';
// import 'package:rumah_sakit/views/perawat/perawat.dart';

// bool tema = false;

// class AddPerawatScreen extends StatefulWidget {
//   const AddPerawatScreen({Key? key});

//   @override
//   _AddPerawatScreenState createState() => _AddPerawatScreenState();
// }

// class _AddPerawatScreenState extends State<AddPerawatScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         title: Text(
//           'Tambah Data Perawat',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 50,
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 18, right: 18),
//               child: Row(
//                 children: [
//                  Text(
//                     'Nama Perawat : ',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   SizedBox(
//                     width: 210,
//                     child: TextField(
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 18, right: 18),
//               child: Row(
//                 children: [
//                   Text(
//                     'No. Telp : ',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(
//                     width: 62,
//                   ),
//                   SizedBox(
//                     width: 210,
//                     child: TextField(
//                       decoration: InputDecoration(
//                         hintText: '+62 8',
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 80),
//             Container(
//               width: 130,
//               height: 45,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Color.fromARGB(255, 45, 107, 223)),
//                 onPressed: () {
//                   Navigator.of(context).pushReplacement(
//                       MaterialPageRoute(builder: (context) => PerawatScreen()));
//                 },
//                 child: Text(
//                   'Submit',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
