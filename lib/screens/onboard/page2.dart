import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
                  height: 100,
                ),
                SizedBox(
                  height: 95,
                  width: 95,
                  child: Center(
                    child: Image.asset('assets/images/headphones.png'),
                  ),
                ),
                const SizedBox(
                  height: 130,
                ),
                Text(
                  'Play the tunes of \n selected songs',
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
