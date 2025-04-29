import 'package:flutter/material.dart';

class DetailTugasPage extends StatelessWidget {
  final String namaAnggota;
  final String tanggal;
  final String tugas;

  const DetailTugasPage({
    Key? key, 
    required this.namaAnggota,
    required this.tanggal,
    required this.tugas,
  }) : super(key: key);

  // String getHari(DateTime date) {
  //   const hariIndo = ['Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu'];
  //   return hariIndo[date.weekday - 1];
  // }


  
}
