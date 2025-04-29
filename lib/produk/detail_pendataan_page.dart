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

  
}
