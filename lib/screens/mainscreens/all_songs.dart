import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
// import 'package:kiddytunes/app_theme/custom_buttons.dart';
import 'package:kiddytunes/app_theme/custom_screenwidget.dart';
import 'package:kiddytunes/data/song_list.dart';
import 'package:kiddytunes/screens/mainscreens/homescreen.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class Allsongsscreen extends StatefulWidget {
  const Allsongsscreen({super.key});

  @override
  State<Allsongsscreen> createState() => _AllsongsscreenState();
}

class _AllsongsscreenState extends State<Allsongsscreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animcntrl;
  @override
  void initState() {
    super.initState();
    _animcntrl = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 500,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animcntrl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final songListprovider = Provider.of<Songlistprovider>(context);

    return ListView.separated(
      itemBuilder: (context, index) {
        final favebox = Hive.box('favourites');
        final filtered = songListprovider.filteredsongs[index];
        List screensList = songListprovider.filteredsongs.map((filteredSong) {
          return Customcard(
            title: filteredSong,
            lyrics: lyricsMap[filteredSong] ?? 'Lyrics not found',
          );
        }).toList();

        return SizedBox(
          height: screenHeight * 0.1,
          width: screenWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //favourites button
              //the function to add and remove songs from the favourites DB
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (favebox.containsKey(filtered)) {
                      favebox.delete(filtered); // remove from favorites
                    } else {
                      favebox.put(filtered, true); // add to favorites
                    }
                  });
                  favebox.containsKey(filtered)
                      ? _animcntrl.forward()
                      : _animcntrl.reverse();
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).primaryColor.withOpacity(0.8),
                    ),
                    height: double.infinity,
                    width: screenWidth * 0.2,
                    // child: favebox.containsKey(filtered)
                    //     ? const Icon(
                    //         Icons.thumb_up_rounded,
                    //         color: Colors.red,
                    //       )
                    //     : const Icon(
                    //         Icons.thumb_up_rounded,
                    //         color: Colors.grey,
                    //       ),
                    child: favebox.containsKey(filtered)
                        ? Lottie.asset(
                            'assets/animations/heart_animation.json',
                            controller: _animcntrl,
                          )
                        : Lottie.asset(
                            'assets/animations/heart_animation.json',
                            controller: _animcntrl,
                          )),
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
                            filtered,
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
      itemCount: songListprovider.filteredsongs.length,
    );
  }
}
