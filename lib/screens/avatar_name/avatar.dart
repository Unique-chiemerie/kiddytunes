import 'package:flutter/material.dart';
import 'package:kiddytunes/app_theme/avatar_card.dart';

class Avatar extends StatefulWidget {
  const Avatar({super.key});

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  final PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
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
              children: const [
                Avatarcard(),
                Avatarcard(),
                Avatarcard(),
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
                  _controller.nextPage(
                      duration: const Duration(seconds: 2),
                      curve: Curves.bounceIn);
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
                  _controller.previousPage(
                      duration: const Duration(seconds: 2),
                      curve: Curves.bounceIn);
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
          )
        ],
      ),
    );
  }
}
