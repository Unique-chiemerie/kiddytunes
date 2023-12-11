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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //the small music logo
                SizedBox(
                  height: double.infinity,
                  width: screenWidth * 0.2,
                  child: const Placeholder(),
                ),
                SizedBox(
                  width: screenWidth * 0.08,
                ),
                //the song itself and the play button
                SizedBox(
                  height: double.infinity,
                  width: screenWidth * 0.6,
                  child: Placeholder(),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
              height: screenHeight * 0.05,
            ),
        itemCount: 10);
  }
}
