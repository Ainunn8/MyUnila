import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' '),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: Icon(Icons.login),
              onPressed: () {
                // Aksi yang akan dijalankan saat tombol login ditekan
                print('Login button pressed');
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(), 
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
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
                      ' Prof. Dr. Ir. Lusmeilia Afriani. D. E. A., IPM., ASEAN Eng. ',
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
                    ],
                    
                  ),
                  
                  SizedBox(height: 10),
                  
                  _buildInformationSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
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
              Container(
                height: 1.0, 
                width: double.infinity, 
                color: Color.fromARGB(103, 177, 169, 169), 
              ), 
              SizedBox(height: 15),
          _buildInfo('INFORMASI', const Color.fromARGB(246, 229, 229, 235)),
          SizedBox(height: 5), // Tambahkan jarak antara badge dan informasi
          _buildInformationRow('Kode PT', '001026'),
          _buildInformationRow('Tanggal Berdiri', '22 September 1965'),
          _buildInformationRow(
            'Alamat',
            'Jl Sumantri Brojonegoro No 1 Gedong Meneng, Kec. Rajabasa, Kota Bandar Lampung 35145',
          ),
          _buildInformationRow('Telepon', '(0721) 701609'),
          _buildInformationRow('Email', 'humas@kpa.unila.ac.id'),
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
          color: Color.fromARGB(255, 161, 157, 157),
          fontSize: 13,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
Widget _buildInformationRow(String label, String value) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            '$label :',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            value,
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    ),
  );
}
}
