import 'package:flutter/material.dart';


class MainMahasiswa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          ProfileMenu(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tampilan Profil
            SizedBox(height: 16),
            Center(child: Text('Semester Aktif', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
            SizedBox(height: 8),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<String>(
                  value: '2022/2023 Genap',
                  underline: SizedBox(),
                  items: <String>['2022/2023 Genap', '2021/2022 Ganjil', '2021/2022 Genap']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Handle dropdown change
                  },
                ),
              ),
            ),
            SizedBox(height: 16),
            Divider(color: Colors.grey),
            SizedBox(height: 8),

            // Tabel Informasi Fakultas, Program Studi, Jenjang
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Table(
                border: TableBorder.all(color: Colors.grey),
                children: [
                  TableRow(children: [
                    Center(child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('FAKULTAS', style: TextStyle(fontWeight: FontWeight.bold)),
                    )),
                    Center(child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('PROGRAM STUDI', style: TextStyle(fontWeight: FontWeight.bold)),
                    )),
                    Center(child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('JENJANG', style: TextStyle(fontWeight: FontWeight.bold)),
                    )),
                  ]),
                  TableRow(children: [
                    Center(child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('MATEMATIKA DAN ILMU PENGETAHUAN ALAM'),
                    )),
                    Center(child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('Ilmu Komputer'),
                    )),
                    Center(child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text('S1'),
                    )),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu extends StatefulWidget {
  @override
  _ProfileMenuState createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        child: Text(
          'DH', // Inisial bisa diubah sesuai dengan data pengguna
          style: TextStyle(color: Colors.white),
        ),
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text('Dhiya Ghina Hasri (Mahasiswa)'),
          ),
        ),
        PopupMenuDivider(),
        PopupMenuItem(
          value: 2,
          child: ListTile(
            leading: Icon(Icons.lock),
            title: Text('Ganti Password'),
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: ListTile(
            leading: Icon(Icons.swap_horiz),
            title: Text('Ganti Peran'),
          ),
        ),
        PopupMenuItem(
          value: 4,
          child: ListTile(
            leading: Icon(Icons.home),
            title: Text('Dashboard Publik'),
          ),
        ),
        PopupMenuDivider(),
        PopupMenuItem(
          value: 5,
          child: ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ),
      ],
      onSelected: (value) {
        // Aksi berdasarkan pilihan
        if (value == 5) {
          // Contoh logout
        }
      },
    );
  }
}




void main() {
  runApp(MaterialApp(
    home: MainMahasiswa(),
  ));
}
