import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:warteg_kuy/color.dart';

class ButtonTambah extends StatefulWidget {
  const ButtonTambah({
    Key key,
    @required this.size,
    this.press,
  }) : super(key: key);

  final Size size;
  final Function press;

  @override
  _ButtonTambahState createState() => _ButtonTambahState();
}

class _ButtonTambahState extends State<ButtonTambah> {
  @override
  int votes = 0;
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width * .8,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: voteUp,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset("assets/icons/bag.svg"),
                SizedBox(width: 10),
                Text(
                  "Tambah ke Keranjang ($votes)",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void voteUp() {
    setState(() => votes++);
  }
}
