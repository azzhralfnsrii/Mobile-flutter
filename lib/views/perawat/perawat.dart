// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'dart:io';

// class PerawatScreen extends StatefulWidget {
//   const PerawatScreen({Key? key});

//   @override
//   _PerawatScreenState createState() => _PerawatScreenState();
// }

// class _PerawatScreenState extends State<PerawatScreen> {
//   List<Perawat> _perawatList = [];
//   bool _isLoading = true;
//   String _errorMessage = '';

//   @override
//   void initState() {
//     super.initState();
//     fetchPerawatList(); // Panggil fungsi untuk mengambil data perawat dari server
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             color: Colors.black,
//             onPressed: () {},
//           ),
//         ],
//         title: Text(
//           'Daftar Data Perawat',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: _isLoading
//           ? Center(child: CircularProgressIndicator())
//           : _errorMessage.isNotEmpty
//               ? Center(child: Text(_errorMessage))
//               : ListView.builder(
//                   itemCount: _perawatList.length,
//                   itemBuilder: (context, index) {
//                     final perawat = _perawatList[index];
//                     return ListTile(
//                       title: Text(perawat.name),
//                       subtitle: Text('Jabatan: ${perawat.position}'),
//                     );
//                   },
//                 ),
//     );
//   }

//   // Fungsi untuk mengambil data perawat dari server
//   void fetchPerawatList() async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final response = await http.get(Uri.parse('http://localhost:8080/perawats'));
//       if (response.statusCode == 200) {
//         final List<dynamic> data = json.decode(response.body);
//         setState(() {
//           _perawatList = data.map((json) => Perawat.fromJson(json)).toList();
//           _isLoading = false;
//         });
//       } else {
//         setState(() {
//           _isLoading = false;
//           _errorMessage = 'Gagal memuat data perawat: ${response.reasonPhrase}';
//         });
//       }
//     } catch (e) {
//       print('Error: $e');
//       setState(() {
//         _isLoading = false;
//         _errorMessage = 'Terjadi kesalahan: ${e.toString()}';
//       });
//     }
//   }
// }

// class Perawat {
//   final int id;
//   final String name;
//   final String position;

//   Perawat({required this.id, required this.name, required this.position});

//   factory Perawat.fromJson(Map<String, dynamic> json) {
//     return Perawat(
//       id: json['id'],
//       name: json['name'],
//       position: json['position'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'position': position,
//     };
//   }
// }



