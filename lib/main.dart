import 'package:flutter/material.dart';
import 'package:kiddytunes/screens/splashscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kiddy tunes',
      theme: ThemeData(useMaterial3: true),
      home: const Splashscreen(),
    ),
  );
}
