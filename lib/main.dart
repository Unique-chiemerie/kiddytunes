import 'package:flutter/material.dart';
import 'package:kiddytunes/app_theme/theme.dart';
import 'package:kiddytunes/screens/mainscreens/homescreen.dart';
import 'package:kiddytunes/screens/splash/splashscreen.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //initialize hive
  await Hive.initFlutter();
  //define the boxn0
  // ignore: unused_local_variable
  var nameBox = await Hive.openBox('names');
  //the favourites local DB
  // ignore: unused_local_variable
  var favebox = await Hive.openBox('favourites');
  // ignore: unused_local_variable
  var avatarbox = await Hive.openBox('Avatar');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => Songlistprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kiddy tunes',
        theme: AppTheme.light,
        home: const Splashscreen(),
        routes: {
          '/home': (context) => const Homescreen(),
        },
      ),
    ),
  );
}
