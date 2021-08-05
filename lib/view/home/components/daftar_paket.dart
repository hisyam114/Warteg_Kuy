import 'package:flutter/material.dart';
import 'package:warteg_kuy/view/detail-1/details-screen.dart';
import 'package:warteg_kuy/view/home/components/card_paket.dart';

class DaftarPaket extends StatelessWidget {
  const DaftarPaket({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CardPaket(
            svgSrc: "assets/icons/nasitelor.svg",
            title: "Nasi Goreng Telur",
            priceName: "Rp. 12.000",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          CardPaket(
            svgSrc: "assets/icons/nasiayam.svg",
            title: "Nasi Ayam Goreng",
            priceName: "Rp. 13.000",
            press: () {},
          ),
          CardPaket(
            svgSrc: "assets/icons/nasisayur.svg",
            title: "Nasi Daun pepaya",
            priceName: "Rp. 10.000",
            press: () {},
          )
        ],
      ),
    );
  }
}
