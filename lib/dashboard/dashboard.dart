import 'package:flutter/material.dart';
import 'package:rumah_sakit/dashboard/editprofile.dart';
import 'package:rumah_sakit/user/signin.dart';
import 'package:rumah_sakit/views/Data%20Kamar/kamar.dart';
import 'package:rumah_sakit/views/Rekam%20Medis/medis.dart';
import 'package:rumah_sakit/views/dokter/dokter.dart';
import 'package:rumah_sakit/views/laporan/laporan.dart';
import 'package:rumah_sakit/views/obat/obat.dart';
import 'package:rumah_sakit/views/pasien/pasien.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:rumah_sakit/views/noantrian/noantrian.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1; // Set index default ke menu "Home"

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        // Navigasi ke halaman "Lokasi Rumah Sakit Ditemukan"
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LocationFoundScreen(),
          ),
        );
      } else if (_selectedIndex == 2) {
        // Navigasi ke halaman "Info Rumah Sakit"
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NoNewsAvailableScreen(),
          ),
        );
      }
    });
  }

  void _navigateToNotifications() {
    // Navigasi ke halaman "Belum Ada Notifikasi"
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NoNotificationsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 236, 237),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.black,
            onPressed: _navigateToNotifications,
          ),
        ],
        title: Column(
          children: [
            Text(
              'RS KELUARGA',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Semua keluarga Anda terlindungi (aktif)',
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                height: 180,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color:Color.fromARGB(255, 120, 184, 241),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(200),
                      bottomLeft: Radius.circular(200),
                    ),
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          size: 67,
                        ),
                        Text(
                          'Pasien',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Logout'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
  decoration: BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
              Color.fromARGB(255, 236, 236, 237),
              Color.fromARGB(255, 120, 184, 241),
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 50),
              GridView.count(
  crossAxisCount: 3, // 3 kolom
  shrinkWrap: true,
  physics: NeverScrollableScrollPhysics(), // Menonaktifkan scrollview di dalam gridview
  children: [
    // Menu Pertama
    MenuCard(
      icon: Icons.medical_services,
      label: 'Data Pasien',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PasientScreen(),
          ),
        );
      },
    ),
    // Menu Kedua
    MenuCard(
      icon: Icons.medical_services,
      label: 'Data Dokter',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DokterScreen(),
          ),
        );
      },
    ),
    // Menu Ketiga
    MenuCard(
      icon: Icons.local_pharmacy,
      label: 'Data Obat',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ObatScreen(),
          ),
        );
      },
    ),
    // Menu Keempat
    MenuCard(
      icon: Icons.hotel,
      label: 'Data Kamar',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => KamarScreen(),
          ),
        );
      },
    ),
    // Menu Kelima
    MenuCard(
      icon: Icons.healing,
      label: 'Data Tindakan',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MedistScreen(),
          ),
        );
      },
    ),
    // Menu Keenam
    MenuCard(
      icon: Icons.schedule, // Ganti ikon dengan Icons.schedule
      label: 'Jadwal',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JadwalDokterScreen(),
          ),
        );
      },
    ),
    // Menu Ketujuh
    MenuCard(
      icon: Icons.format_list_numbered, // Mengganti ikon menjadi format_list_numbered
      label: 'No Antrian',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NomorAntriantScreen(),
          ),
        );
      },
    ),
  ],
),
              SizedBox(height: 1),
      Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [

                      Image.asset('assets/logo.png'),
                      SizedBox(width: 1),
                      Image.asset(
                        'assets/background.jpg',
                        width: 200, // Sesuaikan dengan kebutuhan
                        height: 200, // Sesuaikan dengan kebutuhan
                      ),
                      SizedBox(width: 100), // Menambahkan jarak horizontal antara gambar pertama dan kedua
                      Image.asset(
                        'assets/orang.jpg',
                        width: 250, // Sesuaikan dengan kebutuhan
                        height: 300, // Sesuaikan dengan kebutuhan
                      ),
                      SizedBox(width: 100), // Menambahkan jarak horizontal antara gambar pertama dan kedua
                      Image.asset(
                        'assets/orang2.jpg',
                        width: 300, // Sesuaikan dengan kebutuhan
                        height: 300, // Sesuaikan dengan kebutuhan
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white, // Warna latar belakang biru
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on), // Icon untuk menu "Lokasi"
            label: 'Lokasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Info',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey.withOpacity(0.3), // Warna teks item terpilih menjadi putih
        onTap: _onItemTapped,
      ),
    );
  }
}

// Widget untuk kartu menu
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
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white, // Mengubah warna latar belakang menjadi putih
              borderRadius: BorderRadius.circular(100.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.all(20),
            child: Icon(
              icon,
              color: Colors.blue, // Mengubah warna ikon menjadi biru
            ),
          ),
          SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }
}

// Widget untuk halaman "Belum Ada Notifikasi"
class NoNotificationsScreen extends StatefulWidget {
  @override
  _NoNotificationsScreenState createState() => _NoNotificationsScreenState();
}

class _NoNotificationsScreenState extends State<NoNotificationsScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Durasi animasi
    )..repeat(); // Mengulang animasi secara terus-menerus
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi'),
        backgroundColor:Color.fromARGB(255, 120, 184, 241), // Warna latar belakang app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                 colors: [
              Color.fromARGB(255, 236, 236, 237),
              Color.fromARGB(255, 120, 184, 241),
              ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                child: Icon(
                  Icons.search_off,
                  size: 120,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Belum ada Notifikasi untuk Anda.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}


// Widget untuk halaman "Info Rumah Sakit"
class NoNewsAvailableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi'),
        backgroundColor: Color.fromARGB(255, 120, 184, 241),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16), // Mengatur padding secara keseluruhan
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildNewsCard(
              title: 'Deskripsi RS',
              description:
                  'RS Keluarga adalah rumah sakit yang berkomitmen untuk memberikan pelayanan kesehatan terbaik bagi keluarga Anda. Dengan tenaga medis yang berkualitas, fasilitas modern, dan pelayanan 24/7, RS Keluarga siap memberikan perawatan yang Anda butuhkan.\n\nKontak:\n- Instagram: @rskeluarga_official\n- Email: info@rs-keluarga.com\n- Telepon: (021) 12345678\n\nSilakan hubungi kami untuk informasi lebih lanjut atau kunjungi website resmi kami di www.rs-keluarga.com.',
              backgroundImage: AssetImage('assets/background.jpg'),
            ),
            SizedBox(height: 20),
            _buildNewsCard(
              title: 'Kebijakan RS',
              description:
                  'Kebijakan RS Keluarga mencakup standar keselamatan pasien yang ketat, termasuk prosedur-prosedur pencegahan infeksi, penggunaan obat yang aman, dan pelaporan kejadian insiden medis. Seluruh staf diinstruksikan untuk mengikuti pedoman dan prosedur yang ditetapkan untuk memastikan bahwa pasien menerima perawatan yang aman dan berkualitas.',
              backgroundImage: AssetImage('assets/background.jpg'),
            ),
            SizedBox(height: 20),
            _buildNewsCard(
              title: 'Akreditasi',
              description:
                  'RS Keluarga bangga telah mendapatkan akreditasi dari lembaga akreditasi kesehatan terkemuka, menegaskan komitmen kami terhadap standar kualitas yang tinggi dalam memberikan pelayanan kesehatan. Akreditasi ini merupakan pengakuan terhadap keseriusan kami dalam memenuhi persyaratan yang ditetapkan dalam standar akreditasi yang ketat.',
              backgroundImage: AssetImage('assets/background.jpg'),
            ),
            SizedBox(height: 20),
            _buildNewsCard(
              title: 'Pelayanan',
              description:
                  'RS Keluarga menawarkan layanan kesehatan berkualitas dengan tim medis profesional dan fasilitas modern. Layanan unggulan meliputi konsultasi medis, gawat darurat 24/7, rawat inap dan jalan, diagnostik dan laboratorium, pencegahan penyakit, serta layanan kesehatan mental. Kami berkomitmen untuk memberikan perawatan terbaik kepada setiap pasien.',
              backgroundImage: AssetImage('assets/background.jpg'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildNewsCard({
    required String title,
    required String description,
    required AssetImage backgroundImage,
  }) {
    return Card(
      elevation: 4, // Menambahkan efek bayangan
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: backgroundImage,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.5),
              BlendMode.darken,
            ),
          ),
        ),
        padding: EdgeInsets.all(16), // Mengatur padding di dalam container
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}


// Widget untuk halaman "Lokasi Rumah Sakit Ditemukan"

class LocationFoundScreen extends StatefulWidget {
  @override
  _LocationFoundScreenState createState() => _LocationFoundScreenState();
}

class _LocationFoundScreenState extends State<LocationFoundScreen> {
  late WebViewController _webViewController;

  String _buildMapHtml() {
    String url = '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15864.354264502066!2d106.54388156716485!3d-6.252060547607!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69fdbc268d5ec9%3A0x7a3a000c0fadbd9c!2sRumah%20Sakit%20Keluarga%20Kita!5e0!3m2!1sen!2sid!4v1717926809893!5m2!1sen!2sid" width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
    return '''
      <html>
        <body style="margin:0;padding:0;">
          <div style="width: 100%; height: 100%;">$url</div>
        </body>
      </html>
    ''';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 120, 184, 241),
        title: Text(
          'Lokasi Rumah Sakit',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Expanded(
        child: Container(
          padding: EdgeInsets.all(16),
          child: WebView(
            initialUrl: 'about:blank',
            onWebViewCreated: (WebViewController webViewController) {
              _webViewController = webViewController;
              _loadHtmlFromAssets();
            },
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }

  _loadHtmlFromAssets() async {
    String fileHtmlContents = _buildMapHtml();
    _webViewController.loadUrl(Uri.dataFromString(
      fileHtmlContents,
      mimeType: 'text/html',
    ).toString());
  }
}