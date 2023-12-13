import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiddytunes/data/song_list.dart';

class Customcard extends StatelessWidget {
  const Customcard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) {
          final title = songlist[index].songname;
          final lyrics = songlist[index].lyrics;
          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Center(
                      child: Container(
                        height: screenHeight * 0.15,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.5),
                        ),
                        child: Center(
                          child: Text(
                            title,
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: screenWidth * 0.05,
                                    ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Center(
                      child: Container(
                        height: screenHeight * 0.55,
                        width: screenWidth * 0.9,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Center(
                          child: Text(
                            lyrics,
                            style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //the litle pin that acts like spiral binding on the two Container
              Padding(
                //dynamic padding to align the spiral bind logo
                padding: EdgeInsets.only(
                    left: screenWidth * 0.45,
                    top: screenHeight * 0.12,
                    right: screenWidth * 0.3),
                child: SizedBox(
                  height: screenHeight * 0.11,
                  width: screenWidth * 0.09,
                  child: SvgPicture.asset('assets/images/spiral_bind.svg'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
