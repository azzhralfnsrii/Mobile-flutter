// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:rumah_sakit/views/obat/obat.dart';

// bool tema = false;

// class AddObatScreen extends StatefulWidget {
//   const AddObatScreen({Key? key});

//   @override
//   _AddObatScreenState createState() => _AddObatScreenState();
// }

// class _AddObatScreenState extends State<AddObatScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         title: Text(
//           'Tambah Data Obat',
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
//                   Text(
//                     'Kode Obat : ',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(
//                     width: 30,
//                   ),
//                   SizedBox(
//                     width: 200,
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
//                     'Nama Obat : ',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(
//                     width: 22,
//                   ),
//                   SizedBox(
//                     width: 200,
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
//                     'Jenis Obat : ',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(
//                     width: 25,
//                   ),
//                   SizedBox(
//                     width: 200,
//                     child: TextField(
//                       decoration: InputDecoration(
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
//                       MaterialPageRoute(builder: (context) => ObatScreen()));
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
