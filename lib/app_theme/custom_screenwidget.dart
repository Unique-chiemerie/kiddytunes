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
                  height: screenHeight * 0.03,
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
          //the litle pin that acts like spiral binding on the two Container
          Padding(
            //dynamic padding to align the spiral bind logo
            padding: EdgeInsets.only(
                left: screenWidth * 0.45,
                top: screenWidth * 0.25,
                right: screenWidth * 0.3),
            child: SizedBox(
              height: screenHeight * 0.11,
              width: screenWidth * 0.09,
              child: const Placeholder(),
            ),
          )
        ],
      ),
    );
  }
}
