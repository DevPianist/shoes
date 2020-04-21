import 'package:flutter/material.dart';
import 'package:shoes/src/ui/pages/shoe_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shoes App',
      home: ShoePage(),
    );
  }
}
