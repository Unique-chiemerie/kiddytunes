import 'package:flutter/material.dart';
import 'package:kiddytunes/screens/onboard/onboarding.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    loader();
  }

  void loader() {
    Future.delayed(
      const Duration(seconds: 7),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardOne(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.2,
            ),
            Center(
              child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset('assets/images/kt_logo.png'),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Loading...',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(
              width: 100,
              height: 7,
              child: LinearProgressIndicator(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
