import 'package:flutter/material.dart';
import 'package:kiddytunes/app_theme/custom_buttons.dart';

class Favourited extends StatelessWidget {
  const Favourited({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Favouriteanimation(),
        Center(
          child: Text(
            'No favourites yet',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontSize: screenWidth * 0.01,
                ),
          ),
        ),
      ],
    );
  }
}
