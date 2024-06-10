import 'package:flutter/material.dart';

class JadwalDokter {
  final String namaDokter;
  final String spesialisasi;
  final String hari;
  final String jam;

  JadwalDokter({
    required this.namaDokter,
    required this.spesialisasi,
    required this.hari,
    required this.jam,
  });
}

class JadwalDokterScreen extends StatelessWidget {
  final List<JadwalDokter> jadwalDokters = [
    JadwalDokter(namaDokter: 'Dr. Az Zahra Alfansuri Rambe', 
    spesialisasi: 'Umum', 
    hari: 'Senin', 
    jam: '08:00 - 16:00'),
    JadwalDokter(namaDokter: 'Dr. Khil Dania', 
    spesialisasi: 'Umum', 
    hari: 'Selasa', 
    jam: '09:00 - 17:00'),
    JadwalDokter(namaDokter: 'Dr. Taufik Afriansyah', 
    spesialisasi: 'Bedah', 
    hari: 'Kamis', 
    jam: '09:00 - 17:00'),
    JadwalDokter(namaDokter: 'Dr. Muhammad Sopian', 
    spesialisasi: 'Bedah', 
    hari: 'Rabu', 
    jam: '09:00 - 17:00'),
    JadwalDokter(namaDokter: 'Dr. Pincent', 
    spesialisasi: 'Umum', 
    hari: 'Jum at', 
    jam: '09:00 - 17:00'),

    // Add more doctor schedules here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jadwal Dokter'),
      ),
      body: ListView.builder(
        itemCount: jadwalDokters.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      jadwalDokters[index].namaDokter,
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Spesialisasi: ${jadwalDokters[index].spesialisasi}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Hari: ${jadwalDokters[index].hari}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Jam: ${jadwalDokters[index].jam}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
