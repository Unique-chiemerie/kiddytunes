import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiddytunes/data/avatarlis.dart';

class Namesscreen extends StatelessWidget {
  const Namesscreen({super.key, required this.selectedindex});
  final int selectedindex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
          //the avatar
          Center(
            child: Container(
              margin: const EdgeInsets.all(10),
              height: 170,
              width: 100,
              child: SvgPicture.asset(
                avatarstrings[selectedindex],
              ),
            ),
          ),
          //the text field
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Enter your name',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            ),
          ),
          //the text field
          SizedBox(
            height: 64,
            width: 274,
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Brandon',
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
