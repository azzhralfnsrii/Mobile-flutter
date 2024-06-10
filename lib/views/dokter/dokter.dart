// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class DokterScreen extends StatefulWidget {
//   const DokterScreen({Key? key});

//   @override
//   _DokterScreenState createState() => _DokterScreenState();
// }

// class _DokterScreenState extends State<DokterScreen> {
//   List<Dokter> _dokterList = [];
//   bool _isLoading = true;
//   String _errorMessage = '';

//   @override
//   void initState() {
//     super.initState();
//     fetchDokterList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Daftar Data Dokter'),
//       ),
//       body: _isLoading
//           ? Center(child: CircularProgressIndicator())
//           : _errorMessage.isNotEmpty
//               ? Center(child: Text(_errorMessage))
//               : ListView.builder(
//                   itemCount: _dokterList.length,
//                   itemBuilder: (context, index) {
//                     final dokter = _dokterList[index];
//                     return ListTile(
//                       title: Text(dokter.name),
//                       subtitle: Text(dokter.specialization),
//                     );
//                   },
//                 ),
//     );
//   }

//   void fetchDokterList() async {
//     setState(() {
//       _isLoading = true;
//     });

//     try {
//       final response = await http.get(Uri.parse('http://localhost:8080/dokters'));
//       if (response.statusCode == 200) {
//         final List<dynamic> data = json.decode(response.body);
//         setState(() {
//           _dokterList = data.map((json) => Dokter.fromJson(json)).toList();
//           _isLoading = false;
//         });
//       } else {
//         setState(() {
//           _isLoading = false;
//           _errorMessage = 'Gagal memuat data dokter: ${response.reasonPhrase}';
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

// class Dokter {
//   final int id;
//   final String name;
//   final String specialization;

//   Dokter({required this.id, required this.name, required this.specialization});

//   factory Dokter.fromJson(Map<String, dynamic> json) {
//     return Dokter(
//       id: json['id'],
//       name: json['name'],
//       specialization: json['specialization'],
//     );
//   }
// }
import 'package:flutter/material.dart';

class Dokter {
  final String name;
  final String specialization;
  final String imageUrl;
  final String description;
  final String phoneNumber;

  Dokter({
    required this.name,
    required this.specialization,
    required this.imageUrl,
    required this.description,
    required this.phoneNumber,
  });
}

class DokterDetailScreen extends StatelessWidget {
  final Dokter dokter;

  DokterDetailScreen({required this.dokter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Dokter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Hero(
                tag: 'doctor_image_${dokter.name}',
                child: CircleAvatar(
                  backgroundImage: AssetImage(dokter.imageUrl),
                  radius: 70,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Nama: ${dokter.name}',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Spesialisasi: ${dokter.specialization}',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Nomor Telepon: ${dokter.phoneNumber}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Text(
              dokter.description,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

class DokterScreen extends StatelessWidget {
  final List<Dokter> dokters = [
    Dokter(
      name: 'Dr. Az Zahra Alfansuri Rambe',
      specialization: 'Umum',
      imageUrl: 'assets/images/doctor1.jpg',
      description: 'halo',
      phoneNumber: '555-1234',
    ),
    Dokter(
      name: 'Dr. Taufik Afriansyah',
      specialization: 'Bedah',
      imageUrl: 'assets/images/doctor2.jpg',
      description: 'hai',
      phoneNumber: '555-5678',
    ),
    Dokter(
      name: 'Dr. Khil Dania',
      specialization: 'Umum',
      imageUrl: 'assets/images/doctor2.jpg',
      description: 'halo',
      phoneNumber: '555-5678',
    ),
    Dokter(
      name: 'Dr. Muhammd Sopian',
      specialization: 'Bedah',
      imageUrl: 'assets/images/doctor2.jpg',
      description: 'halo',
      phoneNumber: '555-5678',
    ),
    Dokter(
      name: 'Dr. Pincent',
      specialization: 'Umum',
      imageUrl: 'assets/images/doctor2.jpg',
      description: 'hai',
      phoneNumber: '555-5678',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Dokter'),
      ),
      body: ListView.builder(
        itemCount: dokters.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 4.0,
              child: ListTile(
                leading: Hero(
                  tag: 'doctor_image_${dokters[index].name}',
                  child: CircleAvatar(
                    backgroundImage: AssetImage(dokters[index].imageUrl),
                  ),
                ),
                title: Text(
                  dokters[index].name,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('${dokters[index].specialization} - ${dokters[index].phoneNumber}'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DokterDetailScreen(dokter: dokters[index]),
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
