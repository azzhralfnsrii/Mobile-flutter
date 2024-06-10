import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String username;

  const ProfileScreen({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [],
        title: Text(
          'Profil',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person,
                size: 100, // Sesuaikan dengan ukuran yang diinginkan
                color: Colors.grey, // Sesuaikan dengan warna yang diinginkan
              ),
              SizedBox(height: 15),
              Text(
                username, // Menampilkan nama yang diterima dari widget sebelumnya
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 300,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'No. Telp',
                  ),
                ),
              ),
              SizedBox(height: 32),
              Container(
                width: 130,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 45, 107, 223),
                  ),
                  onPressed: () {
                    // Tambahkan fungsi submit di sini
                    _handleSubmit();
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleSubmit() {
    // Tambahkan logika untuk menangani proses submit di sini
    // Misalnya, simpan perubahan ke database atau lakukan operasi lainnya
    print('Profil berhasil diubah!');
  }
}
