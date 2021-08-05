import 'package:flutter/material.dart';
import 'package:warteg_kuy/color.dart';
import 'package:warteg_kuy/view/detail-1/components/foto_item.dart';
import 'package:warteg_kuy/view/detail-1/components/button_tambah.dart';
import 'package:warteg_kuy/view/detail-1/components/bintang_harga.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FotoItem(
          imgSrc: "assets/images/nasigoreng.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          shopeName(name: "Warung Tegal"),
          BintangHarga(
            name: "Nasi Goreng Telur",
            numOfReviews: 18,
            rating: 4.5,
            price: 12,
            onRatingChanged: (value) {},
          ),
          Text(
            "Nasi goreng adalah sebuah makanan berupa nasi yang digoreng dan diaduk dalam minyak goreng, margarin, atau mentega. Biasanya ditambah kecap manis, bawang merah, bawang putih, asam jawa, lada dan bumbu-bumbu lainnya; seperti telur, ayam, dan kerupuk.",
            style: TextStyle(
              height: 1.2,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          ButtonTambah(
            size: size,
            press: () {},
          )
        ],
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: kThirdColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
