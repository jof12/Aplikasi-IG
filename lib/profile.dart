import 'package:aplikasi_ig/theme/colors.dart';
import 'package:aplikasi_ig/widgets/profile/deskripsi_profile.dart';
import 'package:aplikasi_ig/widgets/profile/informasi_profil.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_ig/widgets/profile/list_post.dart';
import 'package:aplikasi_ig/widgets/profile/appbar_profile.dart';
import 'package:aplikasi_ig/widgets/profile/list_view.dart';
import 'package:aplikasi_ig/widgets/profile/shortcut_button.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  final urlProfile = 'assets/images/xave.jpg';

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarProfile(),
      body: Container(
        color: black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            LastViewed(),
            ProfileInformation(urlProfile: urlProfile),
            ProfileDescription(),
            ShortcutButton(),
            Divider(),
            ListPosts(tabController: _tabController),
          ],
        ),
      ),
    );
  }
}
