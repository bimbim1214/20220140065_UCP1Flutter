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

  
}
