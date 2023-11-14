import 'package:flutter/material.dart';
import 'package:kiddytunes/screens/avatar_name/avatar.dart';
import 'package:kiddytunes/screens/onboard/page1.dart';
import 'package:kiddytunes/screens/onboard/page2.dart';
import 'package:kiddytunes/screens/onboard/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardOne extends StatefulWidget {
  const OnboardOne({super.key});

  @override
  State<OnboardOne> createState() => _OnboardOneState();
}

class _OnboardOneState extends State<OnboardOne> {
  //controllers
  final PageController _controller = PageController();
  //keep track of the pages we're on
  bool onLastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          //page view
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastpage = (index == 2);
              });
            },
            children: const [
              Page1(),
              Page2(),
              Page3(),
              //dot indicator
            ],
          ),

          //dot indicator
          Container(
            alignment: const Alignment(0, 0.75),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 600,
                ),
                //dot indicator
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SmoothPageIndicator(controller: _controller, count: 3),
                ),
                //next or done
                onLastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Avatar(),
                            ),
                          );
                        },
                        child: const Text('Done'),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn);
                        },
                        child: const Text('Next'),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
