import 'package:flutter/material.dart';
import 'package:myunila/homepage.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 8, 
          color: Colors.white, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.all(16), // Jarak antara Card dan tepi layar
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min, // Card akan menyesuaikan dengan konten
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/logo.png', // Pastikan file logo_unila.png ada di folder assets
                      width: 80, // Sesuaikan ukuran gambar
                      height: 80,
                    ),
                    SizedBox(width: 16),
                    Image.asset(
                      'images/kampusmerdeka.png', // Pastikan file kampus_merdeka.png ada di folder assets
                      width: 120, // Sesuaikan ukuran gambar
                      height: 80,
                    ),
                  ],
                ),
                SizedBox(height: 13),
                Text(
                  'My-UNILA',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Dashboard Universitas Lampung',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(height: 20),
                Container(
                width: 400, // Atur lebar sesuai kebutuhan
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                ),
                ),
                SizedBox(height: 16),
                
                // Tombol Sign In - SSO UNILA
                ElevatedButton.icon(
                  onPressed: () {
                    // Aksi ketika tombol Sign In ditekan
                  },
                  icon: Icon(Icons.person),
                  label: Text('Sign In - SSO UNILA'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  const Color.fromARGB(255, 66, 133, 244),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 70),
                    textStyle: TextStyle(fontSize: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(height: 16),

                // Tombol Lupa Kata Sandi
                ElevatedButton.icon(
                  onPressed: () { 
                    // Aksi ketika tombol Lupa Kata Sandi ditekan
                  },
                  icon: Icon(Icons.info),
                  label: Text('Lupa Kata Sandi'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 82),
                    textStyle: TextStyle(fontSize: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                width: 400, // Atur lebar sesuai kebutuhan
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                ),
                ),
                SizedBox(height: 16),

                // Tombol Back to Dashboard
                ElevatedButton.icon(
                  onPressed: () {
                     Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage(onThemeChanged: (ThemeMode ) {  },)),
                );
                },
                  icon: Icon(Icons.home),
                  label: Text('Back to Dashboard'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 76, 204, 226),
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 72),
                    textStyle: TextStyle(fontSize: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                
  Column(
  children: [
    Container(
    width: 400, // Atur lebar sesuai kebutuhan
      child: Divider(
        color: Colors.grey,
        thickness: 1,
    ),
    ),
    SizedBox(height: 5), // Jarak antara divider dan teks
    Row(
      mainAxisAlignment: MainAxisAlignment.center, // Memusatkan konten di dalam row
      children: [
        Text(
          'Created By ',
          style: TextStyle(color: Colors.grey),
        ),
        GestureDetector(
          onTap: () async {
            // Arahkan ke website UPT TIK
            final url = 'https://tik.unila.ac.id/';
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Text(
            'UPT TIK',
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    ),
    SizedBox(height: 8), // Jarak tambahan jika diperlukan
  ],
),

              ]
          ),
        ),
      ),
    )
    );
  }
  }


void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}
