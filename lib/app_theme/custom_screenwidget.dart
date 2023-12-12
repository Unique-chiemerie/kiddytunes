import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  const Customcard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                Center(
                  child: Container(
                    height: screenHeight * 0.15,
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: const Center(
                      child: Text('TITLE GOES HERE'),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Center(
                  child: Container(
                    height: screenHeight * 0.55,
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: const Center(
                      child: Text('lyrics go here'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
