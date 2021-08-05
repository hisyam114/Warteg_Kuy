import 'package:flutter/material.dart';
import 'package:warteg_kuy/components/search_box.dart';
import 'package:warteg_kuy/view/home/components/daftar_kategori.dart';
import 'package:warteg_kuy/view/home/components/jadwal_buka.dart';
import 'package:warteg_kuy/view/home/components/daftar_paket.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          DaftarKategori(),
          DaftarPaket(),
          JadwalBuka(),
        ],
      ),
    );
  }
}
