// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'dart:io';

// class KamarScreen extends StatefulWidget {
//   const KamarScreen({Key? key});

//   @override
//   _KamarScreenState createState() => _KamarScreenState();
// }

// class _KamarScreenState extends State<KamarScreen> {
//   List<Kamar> _kamarList = [];
//   bool _isLoading = true;
//   String _errorMessage = '';

//   @override
//   void initState() {
//     super.initState();
//     fetchKamarList(); // Panggil fungsi untuk mengambil data kamar dari server
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
//           'Daftar Data Kamar',
//           style: TextStyle(fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: _isLoading
//           ? Center(child: CircularProgressIndicator())
//           : _errorMessage.isNotEmpty
//               ? Center(child: Text(_errorMessage))
//               : ListView.builder(
//                   itemCount: _kamarList.length,
//                   itemBuilder: (context, index) {
//                     final kamar = _kamarList[index];
//                     return ListTile(
//                       title: Text(kamar.number),
//                       subtitle: Text('Tipe: ${kamar.type}'),
//                     );
//                   },
//                 ),
//     );
//   }

//   // Fungsi untuk mengambil data kamar dari server
//   void fetchKamarList() async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final response = await http.get(Uri.parse('http://localhost:8080/kamars'));
//       if (response.statusCode == 200) {
//         final List<dynamic> data = json.decode(response.body);
//         setState(() {
//           _kamarList = data.map((json) => Kamar.fromJson(json)).toList();
//           _isLoading = false;
//         });
//       } else {
//         setState(() {
//           _isLoading = false;
//           _errorMessage = 'Gagal memuat data kamar: ${response.reasonPhrase}';
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

// class Kamar {
//   final int id;
//   final String number;
//   final String type;

//   Kamar({required this.id, required this.number, required this.type});

//   factory Kamar.fromJson(Map<String, dynamic> json) {
//     return Kamar(
//       id: json['id'],
//       number: json['number'],
//       type: json['type'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'number': number,
//       'type': type,
//     };
//   }
// }
import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const MenuCard({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 3,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.blue, // Mengubah warna ikon menjadi biru
            ),
            SizedBox(height: 10),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class Kamar {
  final int nomorKamar;
  final String jenisKamar;
  final String status;
  final List<String> fasilitas;

  Kamar({
    required this.nomorKamar,
    required this.jenisKamar,
    required this.status,
    required this.fasilitas,
  });
}

class KamarScreen extends StatelessWidget {
  final List<Kamar> kamarList = [
    Kamar(
      nomorKamar: 101,
      jenisKamar: 'Single',
      status: 'Terisi',
      fasilitas: ['Wi-Fi', 'TV', 'AC'],
    ),
    Kamar(
      nomorKamar: 102,
      jenisKamar: 'Double',
      status: 'Kosing',
      fasilitas: ['Wi-Fi', 'TV', 'AC', 'Mini Bar'],
    ),
        Kamar(
      nomorKamar: 102,
      jenisKamar: 'Double',
      status: 'Kosong',
      fasilitas: ['Wi-Fi', 'AC', 'Mini Bar'],
    ),
        Kamar(
      nomorKamar: 102,
      jenisKamar: 'Single',
      status: 'Kosong',
      fasilitas: ['TV', 'AC',],
    ),
        Kamar(
      nomorKamar: 102,
      jenisKamar: 'Single',
      status: 'Terisi',
      fasilitas: ['Wi-Fi', 'TV', 'AC', 'Mini Bar'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Kamar'),
      ),
      body: ListView.builder(
        itemCount: kamarList.length,
        itemBuilder: (context, index) {
          final kamar = kamarList[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nomor Kamar: ${kamar.nomorKamar}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Jenis Kamar: ${kamar.jenisKamar}'),
                  Text('Status: ${kamar.status}'),
                  SizedBox(height: 10),
                  Text(
                    'Fasilitas:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  for (var fasilitas in kamar.fasilitas)
                    Text('- $fasilitas'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

// Buat halaman dummy untuk tujuan navigasi
class PasienScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Pasien'),
      ),
      body: Center(
        child: Text('Data Pasien'),
      ),
    );
  }
}

class MedisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Tindakan'),
      ),
      body: Center(
        child: Text('Data Tindakan'),
      ),
    );
  }
}

class LaporanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal'),
      ),
      body: Center(
        child: Text('Jadwal'),
      ),
    );
  }
}

class NomorAntrianScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('No Antrian'),
      ),
      body: Center(
        child: Text('No Antrian'),
      ),
    );
  }
}
