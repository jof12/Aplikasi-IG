import 'package:flutter/material.dart';

class AppbarProfile extends StatefulWidget implements PreferredSizeWidget {
  @override
  _AppbarProfileState createState() => _AppbarProfileState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AppbarProfileState extends State<AppbarProfile> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: <Widget>[
          Text('xavesenduk', style: TextStyle(color: Colors.white)),
          Icon(Icons.arrow_drop_down, color: Colors.white)
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.add_box_sharp, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
      ],
      backgroundColor: Colors.black,
    );
  }
}
