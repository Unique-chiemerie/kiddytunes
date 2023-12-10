import 'package:flutter/material.dart';

class Allsongsscreen extends StatefulWidget {
  const Allsongsscreen({super.key});

  @override
  State<Allsongsscreen> createState() => _AllsongsscreenState();
}

class _AllsongsscreenState extends State<Allsongsscreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView.separated(
        itemBuilder: (context, index) {
          return SizedBox(
            height: screenHeight * 0.1,
            width: screenWidth,
            child: const Placeholder(),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
              height: screenHeight * 0.05,
            ),
        itemCount: 10);
  }
}
