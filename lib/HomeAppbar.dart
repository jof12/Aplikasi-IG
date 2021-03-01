import 'package:flutter/material.dart';

class HomeAppbar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _HomeAppbarState createState() => _HomeAppbarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _HomeAppbarState extends State<HomeAppbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(
        Icons.adb,
        color: Colors.white,
      ),
      title: Text(
        "Halaman Utama",
        style: TextStyle(color: Colors.white),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {},
        ),
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight),
        ),
      ),
    );
  }
}
