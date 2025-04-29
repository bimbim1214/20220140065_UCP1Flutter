  //import 'dart:math';
  import 'package:flutter/material.dart';
  import 'package:ucp1/datapelanggan/detail_datapelanggan_page.dart';

  class DataPelangganPage extends StatefulWidget {
    const DataPelangganPage({super.key});

    @override
    State<DataPelangganPage> createState() => _DataPelangganPageState();
  }

  class _DataPelangganPageState extends State<DataPelangganPage> {
    final TextEditingController namaPelangganController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController noTelpController = TextEditingController();
    final TextEditingController alamatController = TextEditingController();
    final TextEditingController provinsiController = TextEditingController();
    final TextEditingController kodePosController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    
  }
