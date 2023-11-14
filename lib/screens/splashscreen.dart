import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          Center(
            child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/kt_logo.png')),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text('Loading...'),
          ),
          const SizedBox(
            width: 70,
            child: LinearProgressIndicator(),
          ),
        ],
      ),
    );
  }
}
