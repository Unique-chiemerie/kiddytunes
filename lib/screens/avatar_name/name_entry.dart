import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiddytunes/data/avatarlis.dart';

class Namesscreen extends StatelessWidget {
  const Namesscreen({super.key, required this.selectedindex});
  final int selectedindex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 170,
              width: 100,
              child: SvgPicture.asset(
                avatarstrings[selectedindex],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
