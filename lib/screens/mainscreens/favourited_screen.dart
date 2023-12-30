import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Favourited extends StatelessWidget {
  const Favourited({super.key});

  @override
  Widget build(BuildContext context) {
    var favebox = Hive.box('favourites');

    return favebox.isEmpty
        ? const Text('No favourited yet')
        : Text(
            favebox.get(1),
          );
  }
}
