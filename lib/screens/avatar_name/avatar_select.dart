import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:kiddytunes/data/avatarlis.dart';
import 'package:kiddytunes/screens/avatar_name/name_entry.dart';
// import 'package:kiddytunes/screens/mainscreens/homescreen.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class Avatar extends StatefulWidget {
  const Avatar({super.key});

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  int selectedindex = 0;
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final avatarbox = Hive.box('Avatar');
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 60,
            ),
            //avatar selections
            SizedBox(
              height: 400,
              width: 350,
              child: PageView(
                controller: _controller,
                children: [
                  avatars[0],
                  avatars[1],
                  avatars[2],
                  avatars[3],
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    _controller.previousPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.elasticOut);
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                IconButton(
                  onPressed: () {
                    _controller.nextPage(
                        duration: const Duration(seconds: 1),
                        curve: Curves.elasticOut);
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_right_sharp,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Choose your avatar',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.white),
            ),
            //the button for choosing
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 197,
                height: 52,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      selectedindex = _controller.page?.round() ?? 0;
                      avatarbox.put(1, selectedindex);
                    });

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Namesscreen(selectedindex: selectedindex),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Choose',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
