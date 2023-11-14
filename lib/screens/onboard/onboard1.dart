import 'package:flutter/material.dart';

class OnboardOne extends StatefulWidget {
  const OnboardOne({super.key});

  @override
  State<OnboardOne> createState() => _OnboardOneState();
}

class _OnboardOneState extends State<OnboardOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Placeholder(),
    );
  }
}
