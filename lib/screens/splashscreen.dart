import 'package:flutter/material.dart';
import 'package:kiddytunes/screens/onboard/onboard1.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
  }

  void loader() {
    Future.delayed(
      const Duration(seconds: 7),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardOne(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 350,
          ),
          Center(
            child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/kt_logo.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Loading...',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          SizedBox(
            width: 70,
            child: LinearProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
