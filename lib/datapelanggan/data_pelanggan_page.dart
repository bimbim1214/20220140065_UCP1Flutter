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

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Data Pelanggan',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Pelanggan',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: namaPelangganController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      hintText: 'Nama Pelanggan',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Colors.green),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Nama pelanggan tidak boleh kosong';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
