// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'dart:io';

// class ObatScreen extends StatefulWidget {
//   const ObatScreen({Key? key});

//   @override
//   _ObatScreenState createState() => _ObatScreenState();
// }

// class _ObatScreenState extends State<ObatScreen> {
//   List<Obat> _obatList = [];
//   bool _isLoading = true;
//   String _errorMessage = '';

//   @override
//   void initState() {
//     super.initState();
//     fetchObatList(); // Panggil fungsi untuk mengambil data obat dari server
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
//           'Daftar Data Obat',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: _isLoading
//           ? Center(child: CircularProgressIndicator())
//           : _errorMessage.isNotEmpty
//               ? Center(child: Text(_errorMessage))
//               : ListView.builder(
//                   itemCount: _obatList.length,
//                   itemBuilder: (context, index) {
//                     final obat = _obatList[index];
//                     return ListTile(
//                       title: Text(obat.name),
//                       subtitle: Text('Jumlah: ${obat.quantity}'),
//                     );
//                   },
//                 ),
//     );
//   }

//   // Fungsi untuk mengambil data obat dari server
//   void fetchObatList() async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final response = await http.get(Uri.parse('http://localhost:8080/obats'));
//       if (response.statusCode == 200) {
//         final List<dynamic> data = json.decode(response.body);
//         setState(() {
//           _obatList = data.map((json) => Obat.fromJson(json)).toList();
//           _isLoading = false;
//         });
//       } else {
//         setState(() {
//           _isLoading = false;
//           _errorMessage = 'Gagal memuat data obat: ${response.reasonPhrase}';
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

// class Obat {
//   final int id;
//   final String name;
//   final int quantity;

//   Obat({required this.id, required this.name, required this.quantity});

//   factory Obat.fromJson(Map<String, dynamic> json) {
//     return Obat(
//       id: json['id'],
//       name: json['name'],
//       quantity: json['quantity'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'name': name,
//       'quantity': quantity,
//     };
//   }
// }

import 'package:flutter/material.dart';

class Obat {
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final String jenis;
  final String kode;

  Obat({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.jenis,
    required this.kode,
  });
}

class ObatDetailScreen extends StatelessWidget {
  final Obat obat;

  ObatDetailScreen({required this.obat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Obat'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.asset(
                obat.imageUrl,
                height: 200,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'ID Obat: ${obat.id}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Nama Obat: ${obat.name}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Jenis Obat: ${obat.jenis}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Kode Obat: ${obat.kode}',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 16.0),
            Text(
              'Deskripsi: ${obat.description}',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

class ObatScreen extends StatelessWidget {
  final List<Obat> obats = [
    Obat(
      id: 1,
      name: 'Paracetamol',
      description: 'Obat ini digunakan untuk meredakan demam dan nyeri ringan hingga sedang.',
      imageUrl: 'assets/images/paracetamol.jpg',
      jenis: 'Analgesik',
      kode: 'ABC123',
    ),
    Obat(
      id: 2,
      name: 'Amoxicillin',
      description: 'Obat ini adalah antibiotik yang digunakan untuk mengobati berbagai infeksi bakteri.',
      imageUrl: 'assets/images/amoxicillin.jpg',
      jenis: 'Antibiotik',
      kode: 'DEF456',
    ),
    Obat(
      id: 3,
      name: 'Omeprazole',
      description: 'Obat ini digunakan untuk mengobati penyakit maag dan gangguan pencernaan lainnya.',
      imageUrl: 'assets/images/omeprazole.jpg',
      jenis: 'Antasida',
      kode: 'GHI789',
    ),
    Obat(
      id: 4,
      name: 'Aspirin',
      description: 'Obat ini digunakan untuk meredakan nyeri ringan dan mengurangi pembekuan darah.',
      imageUrl: 'assets/images/aspirin.jpg',
      jenis: 'Analgesik',
      kode: 'JKL012',
    ),
    Obat(
      id: 5,
      name: 'Loratadine',
      description: 'Obat ini adalah antihistamin yang digunakan untuk meredakan gejala alergi.',
      imageUrl: 'assets/images/loratadine.jpg',
      jenis: 'Antihistamin',
      kode: 'MNO345',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Obat'),
      ),
      body: ListView.builder(
        itemCount: obats.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 4.0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(obats[index].imageUrl),
                ),
                title: Text(
                  obats[index].name,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(obats[index].description),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ObatDetailScreen(obat: obats[index]),
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
