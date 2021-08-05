import 'package:flutter/material.dart';
import 'package:warteg_kuy/view/home/components/kategori.dart';

class DaftarKategori extends StatelessWidget {
  const DaftarKategori({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Kategori(
            title: "Paket",
            isActive: true,
            press: () {},
          ),
          Kategori(
            title: "Sayur",
            press: () {},
          ),
          Kategori(
            title: "Lauk",
            press: () {},
          ),
          Kategori(
            title: "Minuman",
            press: () {},
          ),
        ],
      ),
    );
  }
}
