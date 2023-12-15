import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiddytunes/data/song_list.dart';

class Allsongsscreen extends StatefulWidget {
  const Allsongsscreen({super.key});

  @override
  State<Allsongsscreen> createState() => _AllsongsscreenState();
}

class _AllsongsscreenState extends State<Allsongsscreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView.separated(
      itemBuilder: (context, index) {
        final songs = songlist[index].songname;
        return SizedBox(
          height: screenHeight * 0.1,
          width: screenWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //the small music logo before the songs :
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).primaryColor.withOpacity(0.8),
                ),
                height: double.infinity,
                width: screenWidth * 0.2,
                child: Center(
                  child: SvgPicture.asset(
                    'assets/images/love_song.svg',
                    height: screenHeight * 0.05,
                    width: screenWidth * 0.05,
                  ),
                ),
              ),
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
                            songs,
                            style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    //this should indexly,
                    //for some reason it's not working indexically
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
      itemCount: songlist.length,
    );
  }
}
