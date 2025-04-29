import 'package:flutter/material.dart';
import 'package:ucp1/home_page.dart';

class DetailDataPelangganPage extends StatelessWidget {
  final String namaPelanggan;
  final String emailPelanggan;
  final String noTelpPelanggan;
  final String alamatPelanggan;
  final String provinsiPelanggan;
  final String kodePosPelanggan;

  const DetailDataPelangganPage({
    Key? key,
    required this.namaPelanggan,
    required this.emailPelanggan,
    required this.noTelpPelanggan,
    required this.alamatPelanggan,
    required this.provinsiPelanggan,
    required this.kodePosPelanggan,
  }) : super(key: key);

  Widget DetailRow(String label, String value) {
    return TextField(
      controller: TextEditingController(text: value),
      readOnly: true, // Biar tidak bisa diedit
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text(
          'Detail $namaPelanggan',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 20),
            ClipOval(
              child: Image.asset(
                'images/gambar.jpg', 
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              namaPelanggan,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(emailPelanggan),
            SizedBox(height: 4),
            Text(noTelpPelanggan),
            SizedBox(height: 30),

            
            DetailRow('Alamat', alamatPelanggan),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: DetailRow('Provinsi', provinsiPelanggan),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: DetailRow('Kode Pos', kodePosPelanggan),
                ),
              ],
            ),
            SizedBox(height: 40),

            
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (route) => false,
                );
                },
                child: 
                Text('Selesai', style: TextStyle(fontSize: 18, color: Colors.white)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
