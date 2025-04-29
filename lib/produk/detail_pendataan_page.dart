import 'package:flutter/material.dart';
import 'package:ucp1/home_page.dart';

class DetailPendataanPage extends StatelessWidget {
  final String TanggalTransaksi;
  final String JenisTransaksi;
  final String JenisBarang;
  final String JumlahBarang;
  final String TotalHarga;
  final String HargaSatuan;

  const DetailPendataanPage({
    super.key,
    required this.TanggalTransaksi,
    required this.JenisTransaksi,
    required this.JenisBarang,
    required this.JumlahBarang,
    required this.TotalHarga,
    required this.HargaSatuan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF7F4), 
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green[100],
                ),
                padding: const EdgeInsets.all(24),
                child: Icon(Icons.check_circle, size: 80, color: Colors.green),
              ),
              const SizedBox(height: 20),
              const Text(
                'Data Berhasil Disimpan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 60),
              
              
              TextField('Tanggal', TanggalTransaksi),
              const Divider(),
              TextField('Jenis Transaksi', JenisTransaksi),
              const Divider(),
              TextField('Jenis Barang', JenisBarang),
              const Divider(),
              TextField('Jumlah Barang', JumlahBarang),
              const Divider(),
              TextField('Jenis Harga Satuan', 'Rp. $HargaSatuan'),
              const Divider(),
              TextField('Total Harga', 'Rp. $TotalHarga'),
              const Divider(),

              const Spacer(),

              
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (route) => false,
                );
                  },
                  child: const Text(
                    'Selesai',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
  
}
