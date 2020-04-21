import 'package:flutter/material.dart';

class ShoeSize extends StatelessWidget {
  const ShoeSize({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: Color(0xFFFFCF53),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: <Widget>[
            _ShoeWithShadow(),
            _ShoeSizes(),
          ],
        ),
      ),
    );
  }
}

class _ShoeSizes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _ShoeSizeBox(number: 7),
          _ShoeSizeBox(number: 7.5),
          _ShoeSizeBox(number: 8),
          _ShoeSizeBox(number: 8.5),
          _ShoeSizeBox(number: 9, selected: true),
          _ShoeSizeBox(number: 9.5),
        ],
      ),
    );
  }
}

class _ShoeSizeBox extends StatelessWidget {
  final double number;
  final bool selected;

  const _ShoeSizeBox({Key key, @required this.number, this.selected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<BoxShadow> list = [
      BoxShadow(
        blurRadius: 40,
        color: Color(0xFFEAA14E),
      ),
    ];
    List<BoxShadow> list2 = [
      BoxShadow(
        blurRadius: 10,
        color: Color(0xFFF1A23A),
        offset: Offset(0, 5),
      ),
    ];
    return Container(
      alignment: Alignment.center,
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: this.selected ? Color(0xFFF1A23A) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: this.selected ? list2 : list,
      ),
      child: Text(
        this.number.toString().replaceAll('.0', ''),
        style: TextStyle(
          color: this.selected ? Colors.white : Color(0xFFF1A23A),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _ShoeWithShadow extends StatelessWidget {
  const _ShoeWithShadow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 10,
            right: 0,
            child: _ShoeShadow(),
          ),
          Image(
            image: AssetImage('assets/images/azul.png'),
          ),
        ],
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              blurRadius: 40,
              color: Color(0xFFEAA14E),
            ),
          ],
        ),
      ),
    );
  }
}
