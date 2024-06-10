// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:date_time_picker/date_time_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:intl/intl.dart';
// import 'package:rumah_sakit/views/Rekam%20Medis/editmedis.dart';
// import 'package:rumah_sakit/views/Rekam%20Medis/medis.dart';
// import 'package:rumah_sakit/views/pasien/pasien.dart';

// bool tema = false;

// class ReadMedisScreen extends StatefulWidget {
//   const ReadMedisScreen({Key? key});

//   @override
//   _ReadMedisScreenState createState() => _ReadMedisScreenState();
// }

// class _ReadMedisScreenState extends State<ReadMedisScreen> {
//   String? dateStartInput;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         title: Text(
//           'Rekam Medis',
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
//                    Text(
//                     'Nama Pasien : ',
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
//                     'Nama Dokter : ',
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
//                     'Tanggal Masuk : ',
//                    style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(
//                     width: 14,
//                   ),
//                   SizedBox(
//                     width: 200,
//                     child: TextField(
//                       // Hapus obscureText: true
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         prefixIcon: Padding(
//                           padding: const EdgeInsetsDirectional.only(start: 10),
//                           child: DateTimePicker(
//                             type: DateTimePickerType.date,
//                             initialValue: '',
//                             textAlign: TextAlign.left, // Atur alignment ke kiri
//                             icon: Icon(Icons.calendar_month),
//                             firstDate: DateTime(2000),
//                             lastDate: DateTime(2100),
//                             onChanged: (val) => {
//                               dateStartInput = DateFormat('dd MMM yyyy')
//                                   .format(DateTime.parse(val))
//                             },
//                           ),
//                         ),
//                       ),
//                       onChanged: (val) => {
//                         dateStartInput = DateFormat('dd MMM yyyy')
//                             .format(DateTime.parse(val))
//                       },
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
//                     'Riwayat : ',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(
//                     width: 66,
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
//                           builder: (context) => ChangeMedisScreen()));
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
