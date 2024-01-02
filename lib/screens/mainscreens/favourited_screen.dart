import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:kiddytunes/data/song_list.dart';
// import 'package:kiddytunes/app_theme/custom_buttons.dart';

class Favourited extends StatefulWidget {
  const Favourited({super.key});

  @override
  State<Favourited> createState() => _FavouritedState();
}

class _FavouritedState extends State<Favourited> {
  @override
  Widget build(BuildContext context) {
    final favebox = Hive.box('favourites');
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    List<int> favouritedIndices =
        favebox.keys.map((key) => int.parse(key)).toList();
    return favebox.isEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'No favourites yet',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: screenWidth * 0.05,
                      ),
                ),
              ),
            ],
          )
        : ListView.separated(
            itemBuilder: (context, index) {
              int songindex = favouritedIndices[index];
              String songTitle = songlist[songindex].songname;
              return SizedBox(
                height: screenHeight * 0.1,
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.8),
                        ),
                        height: double.infinity,
                        width: screenWidth * 0.2,
                        child: SizedBox(
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.05,
                          child: Image.asset('assets/images/love.png'),
                        )),
                    SizedBox(
                      width: screenWidth * 0.05,
                    ),
                    //the song itself and the play button:
                    Container(
                      height: double.infinity,
                      width: screenWidth * 0.65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: screenWidth * 0.02,
                          ),
                          //the text sized box
                          SizedBox(
                            width: screenWidth * 0.4,
                            height: screenHeight * 0.05,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Text(
                                  songTitle,
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.05,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => screensList[index],
                                ),
                              );
                            },
                            icon: SvgPicture.asset(
                              'assets/images/play_fab.svg',
                              height: screenHeight * 0.07,
                              width: screenWidth * 0.07,
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * 0.005,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              height: screenHeight * 0.05,
            ),
            itemCount: favouritedIndices.length,
          );
  }
}
