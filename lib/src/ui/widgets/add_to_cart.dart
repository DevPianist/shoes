import 'package:flutter/material.dart';
import 'package:shoes/src/ui/widgets/custom_widgets.dart';

class AddToCart extends StatelessWidget {
  final double price;

  const AddToCart({this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '\$$price',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            CustomButton(text: 'Add to cart')
          ],
        ),
      ),
    );
  }
}
