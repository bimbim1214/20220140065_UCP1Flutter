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

  
  void calculateHargaBarang() {
    int jumlahBarang = int.tryParse(jumlahBarangController.text) ?? 0;
    int hargaSatuan = jenisBarangMap[JenisBarang] ?? 0; // mengambil harga dari map berdasarkan jenis barang

    setState(() {
      hargaBarang = (jumlahBarang * hargaSatuan);
      totalHargaController.text = hargaBarang.toString();
  
    });
  }

  @override
  void initState() {
    super.initState();
    jumlahBarangController.addListener(calculateHargaBarang);
  }

  @override
  void dispose() {
    jumlahBarangController.dispose();
    tanggalTController.dispose();
    totalHargaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pendataan Barang',
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
                  children: const [
                    Text(
                      'Tanggal Transaksi',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: tanggalTController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.calendar_today),
                    hintText: 'Tanggal Transaksi',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                  ),
                  onTap: () => showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  ).then((value) {
                    if (value != null) {
                      tanggalTController.text = value.toString().split(' ')[0];
                    }
                  }),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tolong isi tanggal transaksi';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 40),
                DropdownButtonFormField<String>(
                  value: JenisTransaksi,
                  hint: const Text('Pilih Jenis Transaksi'),
                  items: barangList.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      JenisTransaksi = newValue;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tolong pilih jenis barang';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField<String>(
                  value: JenisBarang,
                  hint: const Text('Pilih Jenis Barang'),
                  items: jenisBarangList.map((String item) {
                    return DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      JenisBarang = newValue;
                    });
                    calculateHargaBarang();
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.green),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tolong pilih jenis barang B';
                    }
                    return null;
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