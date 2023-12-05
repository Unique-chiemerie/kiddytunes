import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiddytunes/data/avatarlis.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            //Dashboard displaying names
            //hive should be used here to display the name the user selected
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: screenHeight * 0.15,
                width: screenWidth * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor.withOpacity(0.8),
                ),
                child: Row(
                  children: [
                    //components of the dashboard
                    //user name and favourites
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.005,
                        ),
                        SizedBox(
                          height: screenHeight * 0.1,
                          width: screenWidth * 0.3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              child: SvgPicture.asset(
                                avatarstrings[1],
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Favourites: 10',
                            style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: screenWidth * 0.05,
                    ),
                    //the name of the user
                    Text(
                      'Martha',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: screenWidth * 0.06),
                    ),
                    SizedBox(
                      width: screenWidth * 0.25,
                    ),
                    const Spacer(),
                    //the music svg
                    Padding(
                      padding: const EdgeInsets.only(bottom: 60, right: 10),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: SvgPicture.asset(
                          'assets/images/music_icon.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //the search bar for songs
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: screenHeight * 0.08,
                width: screenWidth * 0.3,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none),
                    fillColor: Theme.of(context).primaryColor.withOpacity(0.5),
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/images/stylish_search.svg',
                        height: 20,
                        width: 20,
                      ),
                    ),
                    hintText: 'Search songs',
                    hintStyle:
                        const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  cursorColor: Theme.of(context).primaryColor,
                  enableSuggestions: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: screenHeight * 0.06,
                width: screenWidth * 0.4,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            //the sized box for the songs
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: screenHeight * 0.6,
                width: double.infinity,
                child: const Placeholder(
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
