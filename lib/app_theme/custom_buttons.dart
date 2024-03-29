import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:audioplayers/audioplayers.dart';

class Fab extends StatefulWidget {
  final Map<String, String> songpathMap;
  final String titlekey;
  const Fab({super.key, required this.songpathMap, required this.titlekey});

  @override
  State<Fab> createState() => _FabState();
}

class _FabState extends State<Fab> with SingleTickerProviderStateMixin {
  final player = AudioPlayer();
  bool isplaying = false;

  @override
  void initState() {
    super.initState();
    player.onPlayerStateChanged.listen((state) {
      if (state == PlayerState.completed) {
        setState(() {
          isplaying = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    //make the songs rhyme with the matching songs using a map

    return FloatingActionButton(
      onPressed: () {
        setState(() {
          if (isplaying == true) {
            isplaying = false;
            player.stop();
          } else {
            isplaying = true;
            player.play(
              AssetSource(
                  //map the song title to the string path that will be provided here
                  widget.songpathMap[widget.titlekey] ?? ''),
            );
          }
        });
      },
      shape: const CircleBorder(eccentricity: 1),
      backgroundColor: Theme.of(context).primaryColor,
      child: isplaying
          ? Icon(
              Icons.pause,
              color: Colors.white,
              size: screenWidth * 0.12,
            )
          : SvgPicture.asset(
              'assets/images/white_fab.svg',
              height: screenHeight * 0.04,
              width: screenWidth * 0.04,
            ),
    );
  }
}

// class Likebutton extends StatefulWidget {
//   const Likebutton({super.key});

//   @override
//   State<Likebutton> createState() => _LikebuttonState();
// }

// class _LikebuttonState extends State<Likebutton>
//     with SingleTickerProviderStateMixin {
//   bool isliked = false;
//   late final AnimationController _animcntrl;

//   @override
//   void initState() {
//     super.initState();
//     _animcntrl = AnimationController(
//       vsync: this,
//       duration: const Duration(
//         milliseconds: 500,
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _animcntrl.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // if (isliked == false) {
//         //   isliked = true;
//         //   _animcntrl.forward();
//         // } else {
//         //   isliked = false;
//         //   _animcntrl.reverse();
//         // }

//       },
//       child: Lottie.asset(
//         'assets/animations/heart_animation.json',
//         controller: _animcntrl,
//       ),
//     );
//   }
// }

class Notfound extends StatefulWidget {
  const Notfound({super.key});

  @override
  State<Notfound> createState() => _NotfoundState();
}

class _NotfoundState extends State<Notfound>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.4,
      width: screenWidth * 0.4,
      child: Lottie.asset(
        'assets/animations/orange_search.json',
      ),
    );
  }
}

//the favourited animation
class Favouriteanimation extends StatefulWidget {
  const Favouriteanimation({super.key});

  @override
  State<Favouriteanimation> createState() => _FavouriteanimationState();
}

class _FavouriteanimationState extends State<Favouriteanimation>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.25,
      width: screenWidth * 0.25,
      child: Lottie.asset('assets/animations/Ghost_notfound.json'),
    );
  }
}
