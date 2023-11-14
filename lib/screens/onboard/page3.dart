import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
              color: Colors.white,
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
                    child: Image.asset('assets/images/love.png'),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Save your favourite songs',
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
