import 'package:flutter/material.dart';
import 'package:kiddytunes/app_theme/theme.dart';
import 'package:kiddytunes/screens/splashscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kiddy tunes',
      theme: AppTheme.light,
      home: const Splashscreen(),
    ),
  );
}
