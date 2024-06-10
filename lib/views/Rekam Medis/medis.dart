// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'dart:io';

// class MedistScreen extends StatefulWidget {
//   const MedistScreen({Key? key});

//   @override
//   _MedistScreenState createState() => _MedistScreenState();
// }

// class _MedistScreenState extends State<MedistScreen> {
//   List<TindakanMedis> _tindakanList = [];
//   bool _isLoading = true;
//   String _errorMessage = '';

//   @override
//   void initState() {
//     super.initState();
//     fetchTindakanList(); // Panggil fungsi untuk mengambil data tindakan medis dari server
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
//           'Daftar Data Tindakan',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: _isLoading
//           ? Center(child: CircularProgressIndicator())
//           : _errorMessage.isNotEmpty
//               ? Center(child: Text(_errorMessage))
//               : ListView.builder(
//                   itemCount: _tindakanList.length,
//                   itemBuilder: (context, index) {
//                     final tindakan = _tindakanList[index];
//                     return ListTile(
//                       title: Text(tindakan.name),
//                       subtitle: Text('Deskripsi: ${tindakan.description}'),
//                     );
//                   },
//                 ),
//     );
//   }

//   // Fungsi untuk mengambil data tindakan medis dari server
//   void fetchTindakanList() async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final response = await http.get(Uri.parse('http://localhost:8080/tindakan'));
//       if (response.statusCode == 200) {
//         final List<dynamic> data = json.decode(response.body);
//         setState(() {
//           _tindakanList = data.map((json) => TindakanMedis.fromJson(json)).toList();
//           _isLoading = false;
//         });
//       } else {
//         setState(() {
//           _isLoading = false;
//           _errorMessage = 'Gagal memuat data tindakan: ${response.reasonPhrase}';
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

// class TindakanMedis {
//   final int id;
//   final String name;
//   final String description;

//   TindakanMedis({required this.id, required this.name, required this.description});

//   factory TindakanMedis.fromJson(Map<String, dynamic> json) {
//     return TindakanMedis(
//       id: json['id'],
//       name: json['name'],
//       description: json['description'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'description': description,
//     };
//   }
// }

import 'package:flutter/material.dart';

class Tindakan {
  final String nama;
  final String deskripsi;
  final String tanggal;

  Tindakan({
    required this.nama,
    required this.deskripsi,
    required this.tanggal,
  });
}

class TindakanDetailScreen extends StatelessWidget {
  final Tindakan tindakan;

  TindakanDetailScreen({required this.tindakan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Tindakan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Nama Tindakan: ${tindakan.nama}',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12.0),
            Text(
              'Deskripsi: ${tindakan.deskripsi}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 12.0),
            Text(
              'Tanggal: ${tindakan.tanggal}',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

class MedistScreen extends StatelessWidget {
  final List<Tindakan> tindakans = [
    Tindakan(nama: 'Pemeriksaan Darah', deskripsi: 'Pemeriksaan rutin untuk memeriksa kesehatan pasien.', tanggal: '10 Juni 2024'),
    Tindakan(nama: 'Pemasangan Infus', deskripsi: 'Pemasangan infus untuk memberikan cairan dan obat kepada pasien.', tanggal: '12 Juni 2024'),
    Tindakan(nama: 'Pemasangan Infus', 
    deskripsi: 'Pemasangan infus untuk memberikan cairan dan obat kepada pasien.', 
    tanggal: '30 Febuari 2024'),
        Tindakan(nama: 'Periksa', 
    deskripsi: 'Pemeriksaan kondisi Pasien dan memberi obat kepada pasien.', 
    tanggal: '1 Mei 2024'),
        Tindakan(nama: 'Periksa', 
    deskripsi: 'Pemeriksaan kondisi Pasien dan memberi obat kepada pasien.', 
    tanggal: '3 Januari 2024'),
        Tindakan(nama: 'Pemasangan Infus', 
    deskripsi: 'Pemasangan infus untuk memberikan cairan dan obat kepada pasien.', 
    tanggal: '9 Oktober 2023'),
    // Tambahkan tindakan lainnya
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Tindakan'),
      ),
      body: ListView.builder(
        itemCount: tindakans.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 4.0,
              child: ListTile(
                title: Text(
                  tindakans[index].nama,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.0),
                    Text(
                      tindakans[index].deskripsi,
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Tanggal: ${tindakans[index].tanggal}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TindakanDetailScreen(tindakan: tindakans[index]),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
