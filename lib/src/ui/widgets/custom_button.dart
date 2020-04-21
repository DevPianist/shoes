import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        this.text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
