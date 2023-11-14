import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 350,
      child: Container(
        height: 400,
        width: 350,
        margin: const EdgeInsets.all(20),
        color: Colors.yellow,
      ),
    );
  }
}
