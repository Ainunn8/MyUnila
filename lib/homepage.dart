import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Universitas Lampung'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.login),
          ),
        ],
      ),
      drawer: Drawer(), // Optionally implement the drawer menu
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Image.asset('assets/images/logo.png', height: 100), // Add your logo here
            SizedBox(height: 10),
            Text(
              'Universitas Lampung',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              'Prof. Dr. Ir. Lusmeilia Afriani. D. E. A., IPM., ASEAN Eng.',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildStatusBadge('UNGUL', Icons.star, Colors.orange),
                SizedBox(width: 10),
                _buildStatusBadge('AKTIF', Icons.check, Colors.green),
              ],
            ),
            SizedBox(height: 20),
            _buildInformationSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBadge(String label, IconData icon, Color color) {
    return Row(
      children: [
        Icon(icon, color: color),
        SizedBox(width: 4),
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildInformationSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInformationRow('Kode PT', '001026'),
              _buildInformationRow('Tanggal Berdiri', '22 September 1965'),
              _buildInformationRow(
                  'Alamat', 'Jl Sumantri Brojonegoro No 1 Gedong Meneng, Kec. Rajabasa, Kota Bandar Lampung 35145'),
              _buildInformationRow('Telepon', '(0721) 701609'),
              _buildInformationRow('Email', 'humas@kpa.unila.ac.id'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInformationRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(value),
        ],
      ),
    );
  }
}
