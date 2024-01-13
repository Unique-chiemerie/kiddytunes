import 'package:flutter/material.dart';
import 'package:kiddytunes/screens/avatar_name/avatar_select.dart';
import 'package:kiddytunes/screens/mainscreens/homescreen.dart';
import 'package:kiddytunes/screens/onboard/page1.dart';
import 'package:kiddytunes/screens/onboard/page2.dart';
import 'package:kiddytunes/screens/onboard/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardOne extends StatefulWidget {
  const OnboardOne({super.key});

  @override
  State<OnboardOne> createState() => _OnboardOneState();
}

class _OnboardOneState extends State<OnboardOne> {
  //shared preferences
  late SharedPreferences _prefs;
  bool shownOnboarding = true;
  @override
  void initState() {
    super.initState();
    _loadpref();
  }

  Future<void> _loadpref() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      shownOnboarding = _prefs.getBool('showonboard') ?? true;
    });
  }

  Future<void> _disablePref() async {
    await _prefs.setBool('showonboard', false);
    setState(() {
      shownOnboarding = false;
    });
  }

  //controllers
  final PageController _controller = PageController();
  //keep track of the pages we're on
  bool onLastpage = false;
  @override
  Widget build(BuildContext context) {
    return shownOnboarding
        ? Scaffold(
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
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 600,
                        ),
                        //dot indicator
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: SmoothPageIndicator(
                            controller: _controller,
                            count: 3,
                            effect: const ExpandingDotsEffect(
                                activeDotColor: Colors.white,
                                dotColor: Colors.grey),
                          ),
                        ),
                        //next or done
                        onLastpage
                            ? SizedBox(
                                width: 197,
                                height: 52,
                                child: MaterialButton(
                                  onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Avatar(),
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Done',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : SizedBox(
                                width: 197,
                                height: 52,
                                child: MaterialButton(
                                  onPressed: () {
                                    _controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.easeIn);
                                    _disablePref();
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Get started',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        : const Homescreen();
  }
}
