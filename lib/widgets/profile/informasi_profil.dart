import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    Key key,
    @required this.urlProfile,
  }) : super(key: key);

  final String urlProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                urlProfile,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                '3',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "Posts",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Text('751',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Text("Followers", style: TextStyle(color: Colors.white))
            ],
          ),
          Column(
            children: <Widget>[
              Text('432',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              Text("Following", style: TextStyle(color: Colors.white))
            ],
          ),
        ],
      ),
    );
  }
}
