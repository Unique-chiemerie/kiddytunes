import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive/hive.dart';
import 'package:kiddytunes/data/avatarlis.dart';
import 'package:kiddytunes/screens/mainscreens/homescreen.dart';
import 'package:provider/provider.dart';

class Settingsscreen extends StatefulWidget {
  const Settingsscreen({Key? key}) : super(key: key);

  @override
  State<Settingsscreen> createState() => _SettingsscreenState();
}

class _SettingsscreenState extends State<Settingsscreen> {
  final TextEditingController texty = TextEditingController();
  final ScrollController scrolly = ScrollController();
  final FocusNode focussy = FocusNode();
  final avatarbox = Hive.box('Avatar');

  @override
  void initState() {
    super.initState();
    focussy.addListener(() {
      if (focussy.hasFocus) {
        scrolly.jumpTo(scrolly.position.maxScrollExtent);
      }
    });
  }

  @override
  void dispose() {
    scrolly.dispose();
    focussy.dispose();
    super.dispose();
  }

  void addName() {
    final nameBox = Hive.box('names');
    final songListProvider =
        Provider.of<Songlistprovider>(context, listen: false);

    nameBox.put(1, texty.text);
    songListProvider.updateUserName(texty.text);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final avatarint = avatarbox.get(1);

    return Consumer<Songlistprovider>(
      builder: (context, songListProvider, child) {
        return ListView(
          controller: scrolly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                // The avatar selected
                Center(
                  child: SizedBox(
                    height: screenHeight * 0.4,
                    width: screenWidth * 0.5,
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: SvgPicture.asset(
                        avatarstrings[avatarbox.isEmpty ? 1 : avatarint],
                        height: screenHeight * 0.2,
                        width: screenWidth * 0.2,
                      ),
                    ),
                  ),
                ),
                // The button to change name
                Text(
                  'your name',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(
                  height: screenHeight * 0.08,
                  width: screenWidth * 0.6,
                  child: TextField(
                    controller: texty,
                    focusNode: focussy,
                    maxLength: 8,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          color: Colors.black,
                        ),
                    textAlign: TextAlign.justify,
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).primaryColor,
                      filled: true,
                      hintText: 'Brandon',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(156, 255, 255, 255)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                // The space of the confirmed button
                SizedBox(
                  height: screenHeight * 0.28,
                ),
                // Display the user name
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                        addName(); // Save name and update UI
                      },
                      icon: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: screenWidth * 0.1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
