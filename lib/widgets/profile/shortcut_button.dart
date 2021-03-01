import 'package:flutter/material.dart';

class ShortcutButton extends StatelessWidget {
  const ShortcutButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {},
              child:
                  Text('Edit Profile', style: TextStyle(color: Colors.white)),
              color: Colors.black,
              splashColor: Colors.white24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              onPressed: () {},
              child: Text('Contact', style: TextStyle(color: Colors.white)),
              color: Colors.black,
              splashColor: Colors.white24,
            ),
          ),
        ],
      ),
    );
  }
}
