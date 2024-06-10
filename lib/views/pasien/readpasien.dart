// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:date_time_picker/date_time_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:intl/intl.dart';
// import 'package:rumah_sakit/views/pasien/editpasien.dart';
// import 'package:rumah_sakit/views/pasien/pasien.dart';

// bool tema = false;

// class ReadPasienScreen extends StatefulWidget {
//   const ReadPasienScreen({Key? key});

  // @override
  // _ReadPasienScreenState createState() => _ReadPasienScreenState();
// }

// class _ReadPasienScreenState extends State<ReadPasienScreen> {
//   String? dateStartInput;
//   String categoryValue = 'Laki Laki';
//   String categoryValue1 = 'Rawat Inap';
//   @override
//   Widget build(BuildContext context) {
//     final List<String> listCategory = <String>['Laki Laki', 'Perempuan'];
//     final List<String> listCategory1 = <String>['Rawat Inap', 'Rawat Jalan'];
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         title: Text(
//           'Tambah Data Pasien',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 50,
//             ),
            // Container(
            //   margin: EdgeInsets.only(left: 18, right: 18),
            //   child: Row(
            //     children: [
            //       Text(
            //         'Nama : ',
            //         style: TextStyle(fontSize: 16),
            //       ),
            //       SizedBox(
            //         width: 80,
            //       ),
            //       SizedBox(
            //         width: 210,
            //         child: TextField(
            //           // Hapus obscureText: true
            //           decoration: InputDecoration(
            //             border: OutlineInputBorder(),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   margin: EdgeInsets.only(left: 18, right: 18),
            //   child: Row(
            //     children: [
            //       Text(
            //         'Tempat Lahir : ',
            //         style: TextStyle(fontSize: 16),
            //       ),
            //       SizedBox(
            //         width: 28,
            //       ),
            //       SizedBox(
            //         width: 210,
            //         child: TextField(
            //           // Hapus obscureText: true
            //           decoration: InputDecoration(
            //             border: OutlineInputBorder(),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   margin: EdgeInsets.only(left: 18, right: 18),
            //   child: Row(
            //     children: [
            //       Text(
            //         'Tanggal Lahir : ',
            //         style: TextStyle(fontSize: 16),
            //       ),
            //       SizedBox(
            //         width: 25,
            //       ),
            //       SizedBox(
            //         width: 210,
            //         child: TextField(
            //           // Hapus obscureText: true
            //           decoration: InputDecoration(
            //             border: OutlineInputBorder(),
            //             prefixIcon: Padding(
            //               padding: const EdgeInsetsDirectional.only(start: 10),
            //               child: DateTimePicker(
            //                 type: DateTimePickerType.date,
            //                 initialValue: '',
            //                 textAlign: TextAlign.left, // Atur alignment ke kiri
            //                 icon: Icon(Icons.calendar_month),
            //                 firstDate: DateTime(2000),
            //                 lastDate: DateTime(2100),
            //                 onChanged: (val) => {
            //                   dateStartInput = DateFormat('dd MMM yyyy')
            //                       .format(DateTime.parse(val))
            //                 },
            //               ),
            //             ),
            //           ),
            //           onChanged: (val) => {
            //             dateStartInput = DateFormat('dd MMM yyyy')
            //                 .format(DateTime.parse(val))
            //           },
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   margin: EdgeInsets.only(left: 18, right: 18),
            //   child: Row(
            //     children: [
            //       Text(
            //         'Jenis Kelamin : ',
            //         style: TextStyle(fontSize: 16),
            //       ),
            //       SizedBox(
            //         width: 20,
            //       ),
            //       SizedBox(
            //         width: 210,
            //         child: TextField(
            //           // Hapus obscureText: true
            //           decoration: InputDecoration(
            //             border: OutlineInputBorder(),
            //             prefixIcon: Padding(
            //               padding: const EdgeInsetsDirectional.only(start: 95),
            //               child: DropdownButton<String>(
            //                 value: categoryValue,
            //                 icon: const Icon(Icons.arrow_drop_down),
            //                 onChanged: (String? value) {
            //                   setState(() {
            //                     categoryValue = value!;
            //                   });
            //                 },
            //                 items: listCategory
            //                     .map<DropdownMenuItem<String>>((String value) {
            //                   return DropdownMenuItem<String>(
            //                     value: value,
            //                     child: Text(value),
            //                   );
            //                 }).toList(),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   margin: EdgeInsets.only(left: 18, right: 18),
            //   child: Row(
            //     children: [
            //       Text(
            //         'Alamat : ',
            //         style: TextStyle(fontSize: 16),
            //       ),
            //       SizedBox(
            //         width: 70,
            //       ),
            //       SizedBox(
            //         width: 210,
            //         child: TextField(
            //           // Hapus obscureText: true
            //           decoration: InputDecoration(
            //             border: OutlineInputBorder(),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   margin: EdgeInsets.only(left: 18, right: 18),
            //   child: Row(
            //     children: [
            //       Text(
            //         'No. Telp : ',
            //         style: TextStyle(fontSize: 16),
            //       ),
            //       SizedBox(
            //         width: 62,
            //       ),
            //       SizedBox(
            //         width: 210,
            //         child: TextField(
            //           decoration: InputDecoration(
            //             hintText: '+62 8',
            //             border: OutlineInputBorder(),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   margin: EdgeInsets.only(left: 18, right: 18),
            //   child: Row(
            //     children: [
            //       Text(
            //         'Tipe Perawatan : ',
            //         style: TextStyle(fontSize: 16),
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       SizedBox(
            //         width: 210,
            //         child: TextField(
            //           // Hapus obscureText: true
            //           decoration: InputDecoration(
            //             border: OutlineInputBorder(),
            //             prefixIcon: Padding(
            //               padding: const EdgeInsetsDirectional.only(start: 90),
            //               child: DropdownButton<String>(
            //                 value: categoryValue1,
            //                 icon: const Icon(Icons.arrow_drop_down),
            //                 onChanged: (String? value) {
            //                   setState(() {
            //                     categoryValue1 = value!;
            //                   });
            //                 },
            //                 items: listCategory1
            //                     .map<DropdownMenuItem<String>>((String value) {
            //                   return DropdownMenuItem<String>(
            //                     value: value,
            //                     child: Text(value),
            //                   );
            //                 }).toList(),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 80),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     // Container(
            //     //   width: 130,
            //     //   height: 45,
            //     //   child: ElevatedButton(
            //     //     style:
            //     //         ElevatedButton.styleFrom(backgroundColor: Colors.red),
            //     //     onPressed: () {
            //     //       // Navigator.of(context).pushReplacement(MaterialPageRoute(
            //     //       //     builder: (context) => PasienScreen()));
            //     //     },
            //     //     child: Text(
            //     //       'Delete',
            //     //       style: TextStyle(color: Colors.white),
            //     //     ),
            //     //   ),
            //     // ),
            //     SizedBox(
            //       width: 40,
            //     ),
                // Container(
                //   width: 130,
                //   height: 45,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //         backgroundColor: Color.fromARGB(255, 45, 107, 223)),
                //     onPressed: () {
                //       Navigator.of(context).pushReplacement(MaterialPageRoute(
                //           builder: (context) => ChangePasienScreen()));
                //     },
                //     child: Text(
                //       'Edit',
                //       style: TextStyle(color: Colors.white),
                //     ),
                //   ),
                // ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
