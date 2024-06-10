// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:rumah_sakit/views/dokter/editDokter.dart';
// import 'package:rumah_sakit/views/perawat/editperawat.dart';

// bool tema = false;

// class ReadPerawatScreen extends StatefulWidget {
//   const ReadPerawatScreen({Key? key});

//   @override
//   _ReadPerawatScreenState createState() => _ReadPerawatScreenState();
// }

// class _ReadPerawatScreenState extends State<ReadPerawatScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         title: Text(
//           'Data Perawat',
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
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 130,
//                   height: 45,
//                   child: ElevatedButton(
//                     style:
//                         ElevatedButton.styleFrom(backgroundColor: Colors.red),
//                     onPressed: () {
//                       // Navigator.of(context).pushReplacement(MaterialPageRoute(
//                       //     builder: (context) => PasienScreen()));
//                     },
//                     child: Text(
//                       'Delete',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 40,
//                 ),
//                 Container(
//                   width: 130,
//                   height: 45,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: Color.fromARGB(255, 45, 107, 223)),
//                     onPressed: () {
//                       Navigator.of(context).pushReplacement(MaterialPageRoute(
//                           builder: (context) => ChangePerawatScreen()));
//                     },
//                     child: Text(
//                       'Edit',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
