import 'package:flutter/material.dart';

class FotoItem extends StatelessWidget {
  final String imgSrc;
  const FotoItem({
    Key key,
    this.imgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imgSrc,
      height: size.height * 0.25,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
