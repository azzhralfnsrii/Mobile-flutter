
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nomor Antrian',
      theme: ThemeData(
        primaryColor: Colors.blue, // Menggunakan primaryColor di sini
      ),
      home: NomorAntriantScreen(),
    );
  }
}

class NomorAntriantScreen extends StatefulWidget {
  const NomorAntriantScreen({Key? key}) : super(key: key);

  @override
  _NomorAntrianScreenState createState() => _NomorAntrianScreenState();
}

class _NomorAntrianScreenState extends State<NomorAntriantScreen> {
  int _nomorAntrian = 0;
  String _namaPasien = '';

  void _tambahNomorAntrian() {
    setState(() {
      _nomorAntrian++;
    });
  }

  void _resetNomorAntrian() {
    setState(() {
      _nomorAntrian = 0;
      _namaPasien = '';
    });
  }

  void _cetakNomorAntrian(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.assignment,
                  size: 100,
                  color: Colors.blue,
                ),
                SizedBox(height: 20),
                Text(
                  'Kartu Nomor Antrian',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Divider(
                  color: Colors.blue,
                  thickness: 2,
                  height: 20,
                ),
                SizedBox(height: 20),
                Text(
                  'Nama Pasien:',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Text(
                  _namaPasien.isEmpty ? 'Belum Diisi' : _namaPasien,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Nomor Antrian Anda:',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Text(
                  '$_nomorAntrian',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Tutup'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
        title: Text(
          'No Antrian',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
                  colors: [
              Color.fromARGB(255, 120, 184, 241),
              Color.fromARGB(255, 236, 236, 237),
              Color.fromARGB(255, 120, 184, 241),
              ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 300, // Lebar maksimum papan ketik
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama Pasien:',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          _namaPasien = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Masukkan Nama Pasien',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10), // Padding konten papan ketik
                      ),
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Nomor Antrian:',
                style: TextStyle(fontSize: 24),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: _nomorAntrian == 0 ? Colors.grey[300] : Colors.blue[200],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Text(
                  '$_nomorAntrian',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                onPressed: _tambahNomorAntrian,
                child: Text('Ambil Antrian'),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: _resetNomorAntrian,
                child: Text('Reset'),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.red,
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () => _cetakNomorAntrian(context),
                child: Text('Cetak Nomor Antrian'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
