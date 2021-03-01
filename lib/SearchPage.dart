import 'package:aplikasi_ig/constant/search_json.dart';
import 'package:aplikasi_ig/theme/colors.dart';
import 'package:aplikasi_ig/widgets/search_category_item.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SafeArea(
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: textFieldBackground,
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: white.withOpacity(0.3),
                      )),
                  style: TextStyle(color: white.withOpacity(0.3), fontSize: 25),
                  cursorColor: white.withOpacity(0.3),
                ),
              ),
              SizedBox(
                width: 35,
              ),
              Icon(
                Icons.qr_code_scanner,
                color: white,
                size: 40,
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
                children: List.generate(searchCategories.length, (index) {
              return CategoryStoryItem(
                name: searchCategories[index],
              );
            })),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Wrap(
          spacing: 1,
          runSpacing: 1,
          children: List.generate(searchImages.length, (index) {
            return Container(
              width: (size.width - 3) / 3,
              height: (size.width - 3) / 3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(searchImages[index]),
                      fit: BoxFit.cover)),
            );
          }),
        )
      ],
    ));
  }
}
