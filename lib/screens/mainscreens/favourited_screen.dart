import 'package:flutter/material.dart';
import 'package:kiddytunes/app_theme/custom_buttons.dart';

class Favourited extends StatelessWidget {
  const Favourited({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Favouriteanimation(),
        Center(
          child: Text('No favourites yet'),
        ),
      ],
    );
  }
}
