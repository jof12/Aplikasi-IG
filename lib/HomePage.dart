import 'package:aplikasi_ig/HomeAppbar.dart';
import 'package:aplikasi_ig/theme/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: HomeAppbar(),
      body: Center(
        child: Text("Ini Halaman Utama", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
