import 'package:flutter/material.dart';
import 'package:ucp1/produk/detail_pendataan_page.dart';


class PendataanBarangPage extends StatefulWidget {
  const PendataanBarangPage({super.key});

  @override
  State<PendataanBarangPage> createState() => _PendataanBarangPageState();
}

class _PendataanBarangPageState extends State<PendataanBarangPage> {
  final TextEditingController tanggalTController = TextEditingController();
  final TextEditingController jumlahBarangController = TextEditingController();
  final TextEditingController hargaSatuanController = TextEditingController();
  final TextEditingController totalHargaController = TextEditingController();
  int hargaBarang = 0;
  final List<String> barangList = ['Barang Masuk', 'Barang Keluar'];
  final List<String> jenisBarangList = ['JAM', 'KACAMATA', 'KALUNG', 'ANTING', 'GELANG'];
  final Map<String, int> jenisBarangMap = {
    'JAM': 10000,
    'KACAMATA': 50000,
    'KALUNG': 25000,
    'ANTING': 15000,
    'GELANG': 5000,
  };
  String? JenisTransaksi;
  String? JenisBarang;

  
  
}