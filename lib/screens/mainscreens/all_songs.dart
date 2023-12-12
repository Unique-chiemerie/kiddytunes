import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  width: screenWidth * 0.08,
                ),
                //the song itself and the play button:
                Container(
                  height: double.infinity,
                  width: screenWidth * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Songs'),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/images/play_fab.svg'),
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
        itemCount: 10);
  }
}
