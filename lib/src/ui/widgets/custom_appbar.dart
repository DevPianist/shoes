import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  const CustomAppBar({@required this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Container(
        margin: EdgeInsets.only(top: 30.0),
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Text(
              this.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Spacer(),
            Icon(
              Icons.search,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
