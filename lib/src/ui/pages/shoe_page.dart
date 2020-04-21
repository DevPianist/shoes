import 'package:flutter/material.dart';
import 'package:shoes/src/ui/widgets/custom_widgets.dart';

class ShoePage extends StatefulWidget {
  ShoePage({Key key}) : super(key: key);

  @override
  _ShoePageState createState() => _ShoePageState();
}

class _ShoePageState extends State<ShoePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(title: 'For you'),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: <Widget>[
                  ShoeSize(),
                  SizedBox(height: 20),
                  ShoeDetail(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                ],
              ),
            ),
          ),
          AddToCart(price: 180)
        ],
      ),
    );
  }
}
