import 'package:flutter/material.dart';
import 'package:aplikasi_ig/widgets/profile/post.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ListPosts extends StatelessWidget {
  const ListPosts({
    Key key,
    @required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          TabBar(
            controller: _tabController,
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.border_all)),
              Tab(icon: Icon(Feather.tv)),
              Tab(icon: Icon(Icons.assignment_ind)),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                GridView.count(
                  physics: ScrollPhysics(),
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 3.0,
                  crossAxisSpacing: 3.0,
                  children: <String>[
                    'assets/images/elisa.jpg',
                    'assets/images/daffa.jpg',
                    'assets/images/daniel.jpg'
                  ].map((String url) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Post(url)));
                      },
                      child: GridTile(
                        child: Hero(
                            tag: url,
                            child: Image.asset(url, fit: BoxFit.cover)),
                      ),
                    );
                  }).toList(),
                ),
                Container(
                  height: 100,
                  color: Colors.black,
                  child: Center(
                    child: Text('Tidak ada ig story',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.pinkAccent,
                  child: Center(
                    child: Text('DAENGWEB.ID'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
