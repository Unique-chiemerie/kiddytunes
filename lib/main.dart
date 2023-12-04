import 'package:flutter/material.dart';
import 'package:kiddytunes/app_theme/theme.dart';
import 'package:kiddytunes/screens/mainscreens/homescreen.dart';
import 'package:kiddytunes/screens/splash/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kiddy tunes',
      theme: AppTheme.light,
      home: const Splashscreen(),
      routes: {
        '/home': (context) => const Homescreen(),
      },
    ),
  );
}
