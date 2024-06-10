// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:rumah_sakit/views/Data%20Kamar/kamar.dart';
// import 'package:rumah_sakit/views/pasien/pasien.dart';

// bool tema = false;

// class ChangeKamarScreen extends StatefulWidget {
//   const ChangeKamarScreen({Key? key});

//   @override
//   _ChangeKamarScreenState createState() => _ChangeKamarScreenState();
// }

// class _ChangeKamarScreenState extends State<ChangeKamarScreen> {
//   String categoryValue = 'VIP';
//   @override
//   Widget build(BuildContext context) {
//     final List<String> listCategory = <String>[
//       'VIP',
//       'Kelas 1',
//       'Kelas 2',
//       'Kelas 3'
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         title: Text(
//           'Edit Data Kamar',
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
//                     'Nama Kamar : ',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(
//                     width: 25,
//                   ),
//                   SizedBox(
//                     width: 210,
//                     child: TextField(
//                       readOnly: true,
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
//                     'Jenis Kamar : ',
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   SizedBox(
//                     width: 29,
//                   ),
//                   SizedBox(
//                     width: 210,
//                     child: TextField(
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         prefixIcon: Padding(
//                           padding: const EdgeInsetsDirectional.only(start: 30),
//                           child: DropdownButton<String>(
//                             value: categoryValue,
//                             icon: const Icon(Icons.arrow_drop_down),
//                             onChanged: (String? value) {
//                               setState(() {
//                                 categoryValue = value!;
//                               });
//                             },
//                             items: listCategory
//                                 .map<DropdownMenuItem<String>>((String value) {
//                               return DropdownMenuItem<String>(
//                                 value: value,
//                                 child: Text(value),
//                               );
//                             }).toList(),
//                           ),
//                         ),
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
//                           builder: (context) => KamarScreen()));
//                     },
//                     child: Text(
//                       'Submit',
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
