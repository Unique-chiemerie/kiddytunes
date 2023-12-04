import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            //Dashboard displaying names
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: screenHeight * 0.13,
                width: screenWidth * 0.7,
                child: const Placeholder(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //the search bar for songs
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: screenHeight * 0.05,
                width: screenWidth * 0.4,
                child: const Placeholder(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            //the sized box for the songs
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: screenHeight * 0.6,
                width: double.infinity,
                child: const Placeholder(
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
