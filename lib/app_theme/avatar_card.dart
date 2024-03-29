import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Avatarcard extends StatelessWidget {
  const Avatarcard({super.key, required this.imagepath});
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 234,
      height: 306,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(70, 255, 255, 255),
      ),
      child: SvgPicture.asset(
        imagepath,
        height: 150,
        width: 110,
      ),
    );
  }
}
