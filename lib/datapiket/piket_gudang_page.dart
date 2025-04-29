import 'package:flutter/material.dart';
import 'package:ucp1/datapiket/detail_page.dart';

class PiketGudangPage extends StatefulWidget {
  const PiketGudangPage({super.key});

  @override
  State<PiketGudangPage> createState() => _PiketGudangPageState();
}

class _PiketGudangPageState extends State<PiketGudangPage> {
  final TextEditingController namaanggotaController = TextEditingController();
  final TextEditingController tanggalPiketController = TextEditingController();
  final TextEditingController tugasanController = TextEditingController();

  final List<String> tugasanList = [];

  
}
