import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            height: 432,
            width: 350,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                SizedBox(
                  height: 236,
                  width: 190,
                  child: Center(
                    child: Image.asset('assets/images/dancer.png'),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Enjoy over 50 children songs',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
