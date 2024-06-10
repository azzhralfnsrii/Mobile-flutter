// // import 'dart:convert';
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:io';

// // class PasientScreen extends StatefulWidget {
// //   const PasientScreen({Key? key}) : super(key: key);

// //   @override
// //   _PasientScreenState createState() => _PasientScreenState();
// // }

// // class _PasientScreenState extends State<PasientScreen> {
// //   List<Pasien> _pasienList = [];
// //   bool _isLoading = true;
// //   String _errorMessage = '';

// //   @override
// //   void initState() {
// //     super.initState();
// //     fetchPasienList(); // Panggil fungsi untuk mengambil data pasien dari server
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Daftar Data Pasien'),
// //       ),
// //       body: _isLoading
// //           ? Center(child: CircularProgressIndicator())
// //           : _errorMessage.isNotEmpty
// //               ? Center(child: Text(_errorMessage))
// //               : ListView.builder(
// //                   itemCount: _pasienList.length,
// //                   itemBuilder: (context, index) {
// //                     final pasien = _pasienList[index];
// //                     return ListTile(
// //                       title: Text(pasien.name),
// //                       subtitle: Text('Usia: ${pasien.age}'),
// //                     );
// //                   },
// //                 ),
// //     );
// //   }

// //   // Fungsi untuk mengambil data pasien dari server
// //   void fetchPasienList() async {
// //     setState(() {
// //       _isLoading = true;
// //     });

// //     try {
// //       final response = await http.get(Uri.parse('http://localhost:8080/pasiens'));
// //       if (response.statusCode == 200) {
// //         final List<dynamic> data = json.decode(response.body);
// //         setState(() {
// //           _pasienList = data.map((json) => Pasien.fromJson(json)).toList();
// //           _isLoading = false;
// //         });
// //       } else {
// //         setState(() {
// //           _isLoading = false;
// //           _errorMessage = 'Gagal memuat data pasien: ${response.reasonPhrase}';
// //         });
// //       }
// //     } catch (e) {
// //       print('Error: $e');
// //       setState(() {
// //         _isLoading = false;
// //         _errorMessage = 'Terjadi kesalahan: ${e.toString()}';
// //       });
// //     }
// //   }
// // }

// // class Pasien {
// //   final int id;
// //   final String name;
// //   final int age;

// //   Pasien({required this.id, required this.name, required this.age});

// //   factory Pasien.fromJson(Map<String, dynamic> json) {
// //     return Pasien(
// //       id: json['id'],
// //       name: json['name'],
// //       age: json['age'],
// //     );
// //   }

// //   Map<String, dynamic> toJson() {
// //     return {
// //       'id': id,
// //       'name': name,
// //       'age': age,
// //     };
// //   }
// // }

// import 'package:flutter/material.dart';

// class Pasient {
//   final String name;
//   final String id;
//   final String address;
//   final String phoneNumber;

//   Pasient({
//     required this.name,
//     required this.id,
//     required this.address,
//     required this.phoneNumber,
//   });
// }

// class PasientDetailScreen extends StatelessWidget {
//   final Pasient pasient;

//   PasientDetailScreen({required this.pasient});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Detail Pasien'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               'Nama: ${pasient.name}',
//               style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               'ID: ${pasient.id}',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               'Alamat: ${pasient.address}',
//               style: TextStyle(fontSize: 16.0),
//             ),
//             SizedBox(height: 8.0),
//             Text(
//               'Nomor Telepon: ${pasient.phoneNumber}',
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PasientScreen extends StatelessWidget {
//   final List<Pasient> pasients = [
//     Pasient(
//       name: 'John Doe',
//       id: '12345',
//       address: '123 Main Street',
//       phoneNumber: '555-1234',
//     ),
//     Pasient(
//       name: 'Jane Smith',
//       id: '67890',
//       address: '456 Elm Street',
//       phoneNumber: '555-5678',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Data Pasien'),
//       ),
//       body: ListView.builder(
//         itemCount: pasients.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             leading: CircleAvatar(
//               backgroundImage: AssetImage('assets/images/avatar${index + 1}.jpg'),
//             ),
//             title: Text(pasients[index].name),
//             subtitle: Text('ID Pasien: ${pasients[index].id}'),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => PasientDetailScreen(pasient: pasients[index]),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Pasient {
  final String name;
  final String id;
  final String address;
  final String phoneNumber;
  final String placeOfBirth;
  final String dateOfBirth;
  final String gender;
  final String treatmentType;

  Pasient({
    required this.name,
    required this.id,
    required this.address,
    required this.phoneNumber,
    required this.placeOfBirth,
    required this.dateOfBirth,
    required this.gender,
    required this.treatmentType,
  });
}

class PasientDetailScreen extends StatelessWidget {
  final Pasient pasient;

  PasientDetailScreen({required this.pasient});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pasien'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Nama: ${pasient.name}',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'ID: ${pasient.id}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Tempat Lahir: ${pasient.placeOfBirth}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Tanggal Lahir: ${pasient.dateOfBirth}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Jenis Kelamin: ${pasient.gender}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Alamat: ${pasient.address}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Nomor Telepon: ${pasient.phoneNumber}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Tipe Perawatan: ${pasient.treatmentType}',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

class PasientScreen extends StatelessWidget {
  final List<Pasient> pasients = [
    Pasient(
      name: 'Khil Dania',
      id: '1',
      address: 'Blang Naleung Mameh',
      phoneNumber: '555-1234',
      placeOfBirth: 'Jakarta',
      dateOfBirth: '13 Oktober 2004',
      gender: 'Perempuan',
      treatmentType: 'Rawat Inap',
    ),
    Pasient(
      name: 'Anita',
      id: '2',
      address: 'Simpang Len',
      phoneNumber: '555-5678',
      placeOfBirth: 'Medan',
      dateOfBirth: '15 April 2003',
      gender: 'Perempuan',
      treatmentType: 'Rawat Jalan',
    ),
    Pasient(
      name: 'Putri',
      id: '3',
      address: 'Blang Pulo',
      phoneNumber: '555-5678',
      placeOfBirth: 'Aceh',
      dateOfBirth: '03 Mei 2008',
      gender: 'Perempuan',
      treatmentType: 'Rawat Jalan',
    ),
    Pasient(
      name: 'Syifa',
      id: '4',
      address: 'Blang Panyang',
      phoneNumber: '555-5678',
      placeOfBirth: 'Surabaya',
      dateOfBirth: '15 Februari 1985',
      gender: 'Perempuan',
      treatmentType: 'Rawat inap',
    ),
    Pasient(
      name: 'Liza',
      id: '5',
      address: 'Batuphat',
      phoneNumber: '555-5678',
      placeOfBirth: 'Padang',
      dateOfBirth: '15 Februari 1985',
      gender: 'Perempuan',
      treatmentType: 'Rawat Inap',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Pasien'),
      ),
      body: ListView.builder(
        itemCount: pasients.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            elevation: 4.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar${index + 1}.jpg'),
              ),
              title: Text(
                pasients[index].name,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('ID Pasien: ${pasients[index].id}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasientDetailScreen(pasient: pasients[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
