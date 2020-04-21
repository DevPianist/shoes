import 'package:flutter/material.dart';

class ShoeDetail extends StatelessWidget {
  final String title;
  final String description;

  const ShoeDetail({@required this.title, @required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            this.title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            this.description,
            style: TextStyle(color: Colors.black54, height: 1.6),
          )
        ],
      ),
    );
  }
}
