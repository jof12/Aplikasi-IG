import 'package:aplikasi_ig/theme/colors.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final urlImage;
  final urlProfile = 'assets/images/xave.jpg';

  Post(this.urlImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        title: Text(
          'Posts',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        color: black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 40,
                    width: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        urlProfile,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    "xavesenduk",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
            ),
            Container(
              child: Hero(
                  tag: urlImage,
                  child: Image.asset(
                    urlImage,
                    fit: BoxFit.cover,
                  )),
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "View Insights",
                    style: TextStyle(color: Colors.blue, fontSize: 16),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    child: Text('Promote'),
                    color: Colors.blue,
                    textColor: Colors.white,
                  )
                ],
              ),
            ),
            Divider(),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8),
                  child: Icon(Icons.favorite_border, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.comment, color: Colors.white),
                ),
                Icon(Icons.send),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.filter_frames, color: Colors.white),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Desember, 24, 2018",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
