import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class Fab extends StatefulWidget {
  const Fab({super.key});

  @override
  State<Fab> createState() => _FabState();
}

class _FabState extends State<Fab> with SingleTickerProviderStateMixin {
  bool isplaying = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return FloatingActionButton(
      onPressed: () {
        setState(() {
          isplaying = !isplaying;
        });
      },
      shape: const CircleBorder(eccentricity: 1),
      backgroundColor: Theme.of(context).primaryColor,
      child: isplaying
          ? SvgPicture.asset(
              'assets/images/white_fab.svg',
              height: screenHeight * 0.04,
              width: screenWidth * 0.04,
            )
          : Icon(
              Icons.pause,
              color: Colors.white,
              size: screenWidth * 0.12,
            ),
    );
  }
}

class Likebutton extends StatefulWidget {
  const Likebutton({super.key});

  @override
  State<Likebutton> createState() => _LikebuttonState();
}

class _LikebuttonState extends State<Likebutton>
    with SingleTickerProviderStateMixin {
  bool isliked = false;
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
    return GestureDetector(
      onTap: () {
        if (isliked == false) {
          isliked = true;
          _animcntrl.forward();
        } else {
          isliked = false;
          _animcntrl.reverse();
        }
      },
      child: Lottie.asset(
        'assets/animations/heart_animation.json',
        controller: _animcntrl,
      ),
    );
  }
}
