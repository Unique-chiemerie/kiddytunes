import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kiddytunes/app_theme/custom_buttons.dart';
import 'package:kiddytunes/data/song_stringpath.dart';

class Customcard extends StatefulWidget {
  final String title;
  final String lyrics;
  const Customcard({
    super.key,
    required this.title,
    required this.lyrics,
  });

  @override
  State<Customcard> createState() => _CustomcardState();
}

class _CustomcardState extends State<Customcard> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_left_rounded,
              color: Theme.of(context).primaryColor,
              size: screenWidth * 0.15,
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
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
                              widget.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontSize: screenWidth * 0.045,
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
                            child: SizedBox(
                              height: screenHeight * 0.5,
                              width: screenWidth * 0.8,
                              child: SingleChildScrollView(
                                child: Text(
                                  widget.lyrics,
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.05,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * 0.02,
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
        floatingActionButton: Fab(
          songpathMap: songPathMap,
          titlekey: widget.title,
        ),
      ),
    );
  }
}
