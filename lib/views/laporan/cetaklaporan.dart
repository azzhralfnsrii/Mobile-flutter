// import 'package:flutter/material.dart';

// class CreateLaporanScreen extends StatefulWidget {
//   const CreateLaporanScreen({super.key});

//   @override
//   State<CreateLaporanScreen> createState() => _CreateLaporanScreenState();
// }

// class _CreateLaporanScreenState extends State<CreateLaporanScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'RS KELUARGA',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Pasien',
//                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10.0),
//               Row(
//                 children: [
//                   Text(
//                     'Nama: ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Az Zahra Alfansuri Rambe'),
//                 ],
//               ),
//               SizedBox(height: 5.0),
//               Row(
//                 children: [
//                   Text(
//                     'Tempat Lahir: ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Kisaran'),
//                 ],
//               ),
//               SizedBox(height: 5.0),
//               Row(
//                 children: [
//                   Text(
//                     'Tanggal Lahir: ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('01/01/2005'),
//                 ],
//               ),
//               SizedBox(height: 5.0),
//               Row(
//                 children: [
//                   Text(
//                     'Jenis Kelamin: ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Perempuan'),
//                 ],
//               ),
//               SizedBox(height: 5.0),
//               Row(
//                 children: [
//                   Text(
//                     'Alamat: ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Kisaran'),
//                 ],
//               ),
//               SizedBox(height: 5.0),
//               Row(
//                 children: [
//                   Text(
//                     'No. Telp: ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('+62 813 7379 8981'),
//                 ],
//               ),
//               SizedBox(height: 15.0),
//               Text(
//                 'Tipe Perawatan: ',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 5.0),
//               Text('Rawat Inap'),
//               SizedBox(height: 15.0),
//               Text(
//                 'Dokter',
//                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10.0),
//               Row(
//                 children: [
//                   Text(
//                     'Nama: ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Khil Dania'),
//                 ],
//               ),
//               SizedBox(height: 5.0),
//               Row(
//                 children: [
//                   Text(
//                     'Spesialis: ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Umum'),
//                 ],
//               ),
//               SizedBox(height: 5.0),
//               Row(
//                 children: [
//                   Text(
//                     'No. Telp: ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('+62 813 7379 8981'),
//                 ],
//               ),
//               SizedBox(height: 15.0),
//               Text(
//                 'Perawat',
//                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10.0),
//               Row(
//                 children: [
//                   Text(
//                     'Nama: ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Melina'),
//                 ],
//               ),
//               SizedBox(height: 5.0),
//               Row(
//                 children: [
//                   Text(
//                     'Jaga: ',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text('Pagi'),
//                 ],
//               ),
//               SizedBox(height: 15.0),
//               Text(
//                 'Diagnosis',
//                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10.0),
//               Text(
//                 'Demam berdarah dengue (DBD)',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 15.0),
//               Text(
//                 'Obat',
//                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10.0),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     '- Paracetamol 500 mg, diminum 3x sehari',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     '- Asam Traneksamat 500 mg, diminum 3x sehari',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     '- Ondansetron 8 mg, diminum saat mual',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     '- Ringer Laktat, diberikan secara infus',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 15.0),
//               Text(
//                 'Catatan',
//                 style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10.0),
//               Text(
//                 '- Pasien harus istirahat yang cukup dan minum banyak air putih.',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               Text(
//                 '- Kontrol kembali 3 hari setelah rawat inap.',
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 20.0),
//               Image.asset('logo.png')
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
