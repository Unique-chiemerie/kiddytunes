import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:kiddytunes/data/avatarlis.dart';
import 'package:kiddytunes/screens/mainscreens/homescreen.dart';
import 'package:provider/provider.dart';
// import 'package:kiddytunes/screens/mainscreens/homescreen.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class Namesscreen extends StatefulWidget {
  const Namesscreen({super.key, required this.selectedindex});
  final int selectedindex;

  @override
  State<Namesscreen> createState() => _NamesscreenState();
}

class _NamesscreenState extends State<Namesscreen> {
  final TextEditingController _texty = TextEditingController();

  void addName() {
    final nameBox = Hive.box('names');
    final songListProvider =
        Provider.of<Songlistprovider>(context, listen: false);

    nameBox.put(1, _texty.text);
    songListProvider.updateUserName(_texty.text);
  }

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
                avatarstrings[widget.selectedindex],
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
              controller: _texty,
              maxLength: 8,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    color: Colors.black,
                  ),
              textAlign: TextAlign.justify,
              cursorColor: Theme.of(context).primaryColor,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Brandon',
                hintStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        elevation: 0,
        splashColor: Colors.white,
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
          addName();
        },
        child: SvgPicture.asset('assets/images/next.svg'),
      ),
    );
  }
}
