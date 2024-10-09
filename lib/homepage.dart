import 'package:flutter/material.dart';
import 'package:myunila/login.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myunila/qs_world_university.dart';
import 'package:myunila/theme.dart';
import 'package:myunila/MainMahasiswa.dart';


class HomePage extends StatefulWidget {
  final Function(ThemeMode) onThemeChanged;

  HomePage({required this.onThemeChanged});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isVisiSelected = true;  // To track if Visi is selected or Misi is selected.
  bool _isProgramStudiPressed = false;
  bool _isMahasiswaPressed = false;
  bool _isDosenPressed = false;
  bool _isTenagaKependidikanPressed = false;

  void _selectButton(String button) {
    setState(() {
      _isProgramStudiPressed = button == 'Program Studi';
      _isMahasiswaPressed = button == 'Mahasiswa';
      _isDosenPressed = button == 'Dosen';
      _isTenagaKependidikanPressed = button == 'Tenaga Kependidikan';
    });
  }
  
  void _toggleTextVisibility(bool isVisi) {
    setState(() {
      _isVisiSelected = isVisi;  // Update based on which button was pressed.
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 280.0),
            child: PopupMenuButton(
              icon: Icon(Icons.wb_sunny),
              onSelected: (value) {
                if (value == 'Light') {
                  widget.onThemeChanged(ThemeMode.light);
                } else if (value == 'Dark') {
                  widget.onThemeChanged(ThemeMode.dark);
                } else if (value == 'System') {
                  widget.onThemeChanged(ThemeMode.system);
                }
              },
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  value: 'Light',
                  child: Row(
                    children: [
                      Icon(Icons.wb_sunny),
                      SizedBox(width: 10),
                      Text('Light Mode'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'Dark',
                  child: Row(
                    children: [
                      Icon(Icons.bedtime_outlined),
                      SizedBox(width: 10),
                      Text('Dark Mode'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'System',
                  child: Row(
                    children: [
                      Icon(Icons.desktop_windows),
                      SizedBox(width: 10),
                      Text('System Mode'),
                    ],
                  ),
                ),
              ],
            ),
          ),
Padding(
  padding: const EdgeInsets.only(right: 16.0),
  child: TextButton(
    onPressed: () {
     Navigator.pop(context); // Menutup drawer
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    },
    style: TextButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 66, 133, 244), // Warna biru yang mirip dengan gambar
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3), // Sudut melengkung
      ),
      shadowColor: Colors.black.withOpacity(0.3), // Menambahkan bayangan
      elevation: 5, 
      // Tinggi bayangan
    ),
    
    child: Row(
      mainAxisSize: MainAxisSize.min, // Agar tidak mengisi ruang yang tersedia
      children: [
        Icon(Icons.login, color: Colors.white),
        SizedBox(width: 9), // Jarak antara ikon dan teks
        Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
           ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),


drawer: Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        padding: EdgeInsets.all(20.0), 
        decoration: BoxDecoration(
          color: Colors.transparent,

        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center, // Agar gambar dan teks sejajar secara vertikal
          children: <Widget>[
            Image.asset(
              'images/logo.png', // Pastikan file logo.png ada di folder assets
              width: 34, // Sesuaikan ukuran gambar
              height: 50,
            ),
            SizedBox(height: 8), // Jarak antara gambar dan teks
            Text(
              '  MyUnila',
              style: TextStyle(
                color: const Color.fromARGB(152, 0, 0, 0),
                fontSize: 29,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Halaman Utama'),
              onTap: () {
                // Handle Halaman Utama tap
              },
            ),
            ExpansionTile(
              leading: Icon(Icons.school),
              title: Text('World Class University'),
              children: [
                ListTile(
                  title: Text('QS World University Ranking'),
                  onTap: () {
                    Navigator.pop(context); // Menutup drawer
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QSWorldUniversityRankingPage()),
                    ); // Navigasi ke halaman QSWorldUniversityRankingPage
                  },
                ),
                ListTile(
                  title: Text('Times Higher Education Ranking'),
                  onTap: () {
                    // Navigate to THE Ranking page
                  },
                ),
                ListTile(
                  title: Text('Webometrics Ranking'),
                  onTap: () {
                    // Navigate to Webometrics Ranking page
                  },
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Green Metric Ranking'),
              onTap: () {
                // Handle Green Metric Ranking tap
              },
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text('Kelulusan Tepat Waktu'),
              onTap: () {
                // Handle Kelulusan Tepat Waktu tap
              },
            ),
            ListTile(
              leading: Icon(Icons.insert_chart),
              title: Text('Infografis'),
              onTap: () {
                // Handle Infografis tap
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('PMB Mandiri'),
              onTap: () {
                // Handle PMB Mandiri tap
              },
            ),
          ],
        ), 
        ),// Optionally implement the drawer menu

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildMainCard(),
              SizedBox(height: 16),
              _buildNewCard(),
              SizedBox(height: 16),

            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

            // Program Studi Button
            Expanded(
              child: Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: _isProgramStudiPressed ? const Color.fromARGB(255, 33, 149, 243) : Colors.transparent,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                 onPressed: () {
                    _selectButton('Program Studi');
                  },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.grid_view, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      'Program Studi',
                      style: TextStyle(color: const Color.fromARGB(255, 158, 158, 158)),
                    ),
                  ],
                )
              ),
              )
                ),
          ],
            ),
            
          
            
            // Mahasiswa Button
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: _isMahasiswaPressed ? Colors.blue : Colors.transparent,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                    _selectButton('Mahasiswa');
                  },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person_outline, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      'Mahasiswa',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

            // Dosen Button
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                   backgroundColor: _isDosenPressed ? Colors.blue : Colors.transparent,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                    _selectButton('Dosen');
                  },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.groups_outlined, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      'Dosen',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),

            // Tenaga Kependidikan Button
            Container(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: _isTenagaKependidikanPressed ? Colors.blue : Colors.transparent,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                    _selectButton('Tenaga Kependidikan');
                  },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.groups_2_outlined, color: Colors.grey),
                    SizedBox(width: 10),
                    Text(
                      'Tenaga Kependidikan',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              
            )
          ],
        ),
      ),
    ),
  );
}

  Widget _buildMainCard() {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.asset('assets/images/logo.png', height: 100),
            SizedBox(height: 10),
            Text(
              'Universitas Lampung',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(213, 229, 229, 235),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'Prof. Dr. Ir. Lusmeilia Afriani. D. E. A., IPM., ASEAN Eng.',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 45),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildStatusBadge('UNGGUL', Icons.star, Colors.orange, const Color.fromARGB(109, 255, 217, 159)),
                SizedBox(width: 10),
                _buildStatusBadge('AKTIF', Icons.check, Colors.green, const Color.fromARGB(148, 200, 230, 201)),
                // _buildDivider(),
              ],
            ),
            SizedBox(height: 10),
            Container(
                width: 400, // Atur lebar sesuai kebutuhan
                  child: Divider(
                    color: Colors.grey,
                    thickness: 0.50,
                ),
                ),
            _buildInformationSection(),       
          ],
        ),
      ),
    );
  }


 Widget _buildNewCard() {
  return Card(
    elevation: 4,
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(
                  Icons.remove_red_eye,
                  color: _isVisiSelected ? Colors.blue : Colors.grey,
                ),
                onPressed: () => _toggleTextVisibility(true),  // Tampilkan Visi saat di-klik
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Visi', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Universitas Lampung'),
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.album_outlined,
                  color: !_isVisiSelected ? Colors.blue : Colors.grey,
                ),
                onPressed: () => _toggleTextVisibility(false), // Tampilkan Misi saat di-klik
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Misi', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Universitas Lampung'),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),  // Beri jarak
          // Menambahkan kolom yang memuat Visi dan Misi
          Column(
            children: [
              _buildDivider(),
              if (_isVisiSelected)
                _buildVisiText() // Tampilkan teks Visi jika _isVisiSelected == true
              else
                _buildMisiText(), // Tampilkan teks Misi jika _isVisiSelected == false
            ],
          ),
        ],
      ),
    ),
  );
}


  Widget _buildVisiText() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text(
        'Pada Tahun 2025 Unila Menjadi Perguruan Tinggi Sepuluh Terbaik di Indonesia.',
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget _buildMisiText() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Text(
        '(1). Mewujudkan penyelenggaraan Tridharma Perguruan Tinggi yang berkualitas. \n(2). Mewujudkan budaya akademik yang kondusif, dinamis, dan bermoral. \n(3). Mewujudkan tata kelola organisasi Unila yang baik (good university governance). \n(4). Mewujudkan aksesibilitas dan ekuitas pendidikan tinggi. \n(5). Menjadi agen perubahan dan menjaga kebenaran dan keadilan bagi kepentingan masyarakat. \n(6). Mewujudkan kerjasama dengan berbagai pihak antara lain pemerintah, masyarakat, dunia usaha, lembaga nonpemerintah, dalam dan luar negeri, yang saling memberikan manfaat secara berkelanjutan.',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

  Widget _buildStatusBadge(String label, IconData icon, Color iconColor, Color bgColor) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor),
          SizedBox(width: 4),
          Text(label, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54)),
        ],
      ),
    );
  }

  Widget _buildInformationSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfo('INFORMASI', const Color.fromARGB(246, 229, 229, 235)),
          SizedBox(height: 8),
          _buildInformationRow('Kode PT', '001026'),
          _buildDivider(),
          _buildInformationRow('Tanggal Berdiri', '22 September 1965'),
          _buildDivider(),
          _buildInformationRow(
            'Alamat',
            'Jl Sumantri Brojonegoro No 1 Gedong Meneng, Kec. Rajabasa, Kota Bandar Lampung 35145',
          ),
          _buildDivider(),
          _buildInformationRow('Telepon', '(0721) 701609'),
          _buildDivider(),
          _buildInformationRow('Email', 'humas@kpa.unila.ac.id'),
          _buildDivider(),
        ],
      ),
    );
  }

  Widget _buildInfo(String text, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color.fromARGB(255, 152, 149, 149),
          fontSize: 13,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildInformationRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.5),
      child: Row(
        children: [
          Expanded(flex: 2, child: Text(label, style: TextStyle(fontWeight: FontWeight.bold))),
          Expanded(flex: 1, child: Text(':')),
          Expanded(flex: 5, child: Text(value)),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(color: Color.fromARGB(103, 177, 169, 169), thickness: 1.0);
  }