import 'package:flutter/material.dart';
import 'package:warteg_kuy/color.dart';
import 'package:warteg_kuy/view/detail-1/components/app_bar.dart';
import 'package:warteg_kuy/view/detail-1/components/body.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}
