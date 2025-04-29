import 'package:flutter/material.dart';
import 'package:ucp1/datapelanggan/data_pelanggan_page.dart';
import 'package:ucp1/login_page.dart';
import 'package:ucp1/datapiket/piket_gudang_page.dart';
import 'package:ucp1/produk/pendataan_barang_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          backgroundColor: Colors.green,
          elevation: 0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/gambar.jpg'),
                  radius: 35,
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Nama Pengguna',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Text(
                      'Admin',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.logout, color: Colors.white),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}
