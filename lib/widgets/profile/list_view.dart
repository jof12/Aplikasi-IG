import 'package:flutter/material.dart';

class LastViewed extends StatelessWidget {
  const LastViewed({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.fromBorderSide(
          BorderSide(width: 1, color: Colors.grey),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('10',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white60)),
          Text(' profile visits in the last 7 days',
              style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
