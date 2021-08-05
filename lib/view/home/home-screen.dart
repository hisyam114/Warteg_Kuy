import 'package:flutter/material.dart';
import 'package:warteg_kuy/components/bottom_nav_bar.dart';
import 'package:warteg_kuy/view/home/components/app_bar.dart';
import 'package:warteg_kuy/view/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: Body(),
    );
  }
}
