import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:kiddytunes/app_theme/custom_buttons.dart';
// import 'package:kiddytunes/app_theme/custom_buttons.dart';
import 'package:kiddytunes/data/avatarlis.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:kiddytunes/data/song_list.dart';
import 'package:kiddytunes/screens/mainscreens/all_songs.dart';
import 'package:kiddytunes/screens/mainscreens/favourited_screen.dart';
import 'package:kiddytunes/screens/mainscreens/settings.dart';
import 'package:provider/provider.dart';

//create  a provider for songs
class Songlistprovider extends ChangeNotifier {
  List<String> filteredsongs = List.from(songsString);
  void updateFilteredList(String query) {
    if (query.isEmpty) {
      filteredsongs = List.from(songsString);
    } else {
      filteredsongs = songsString
          .where((songString) =>
              songString.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final TextEditingController _searchcontroller = TextEditingController();

  int selected = 1;

  //search funcionality
  void onsearch(String query) {
    final songLeestprovider =
        Provider.of<Songlistprovider>(context, listen: false);
    songLeestprovider.updateFilteredList(query);
  }

//sliding controller logic
  Widget buildscreen() {
    final songListProvider =
        Provider.of<Songlistprovider>(context, listen: false);
    final filteredSongs = songListProvider.filteredsongs;

    if (filteredSongs.isEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Notfound(),
          Text(
            'No songs found',
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                color: Colors.red),
          ),
        ],
      );
    } else {
      if (selected == 1) {
        return const Allsongsscreen();
      } else if (selected == 2) {
        return const Favourited();
      }
      return const Placeholder();
    }
  }

  @override
  Widget build(BuildContext context) {
    final favbox = Hive.box('favourites');
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final favourites = favbox.values.length;
    final namebox = Hive.box('names');
    final avatarbox = Hive.box('Avatar');
    int avatarint = avatarbox.get(1);

    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            //Dashboard displaying names
            //hive should be used here to display the name the user selected
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: screenHeight * 0.15,
                width: screenWidth * 0.7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor.withOpacity(0.8),
                ),
                child: Row(
                  children: [
                    //components of the dashboard
                    //user name and favourites
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.005,
                        ),
                        SizedBox(
                          height: screenHeight * 0.1,
                          width: screenWidth * 0.3,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              child: SvgPicture.asset(
                                avatarstrings[avatarint],
                                height: 50,
                                width: 50,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Favourites: $favourites',
                            style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: screenWidth * 0.05,
                    ),
                    //the name of the user saved on the DB
                    Text(
                      namebox.isEmpty ? '' : namebox.get(1),
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontSize: screenWidth * 0.06),
                    ),
                    SizedBox(
                      width: screenWidth * 0.15,
                    ),
                    //the music svg
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: screenHeight * 0.1, left: screenWidth * 0.05),
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => const Settingsscreen(),
                          );
                        },
                        icon: Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: screenWidth * 0.07,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //the search bar for songs
            //call the implemented search function here:
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: screenHeight * 0.08,
                width: screenWidth * 0.3,
                child: TextField(
                  controller: _searchcontroller,
                  onChanged: onsearch,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: screenWidth * 0.05),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none),
                    fillColor: Theme.of(context).primaryColor.withOpacity(0.5),
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/images/stylish_search.svg',
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.05,
                      ),
                    ),
                    hintText: 'Search songs',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.05,
                    ),
                  ),
                  cursorColor: Theme.of(context).primaryColor,
                  enableSuggestions: true,
                ),
              ),
            ),
            //the slidable tab
            Center(
              child: CustomSlidingSegmentedControl(
                initialValue: 1,
                children: {
                  //The songs icon
                  1: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Songs',
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/images/final_music_svg.svg',
                          height: screenHeight * 0.05,
                          width: screenWidth * 0.05,
                        ),
                      ),
                    ],
                  ),
                  //The favourited icon
                  2: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Favourites',
                        style: TextStyle(
                          fontSize: screenWidth * 0.045,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/images/Heart_svg.svg',
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.02,
                      ),
                    ],
                  ),
                },
                height: screenHeight * 0.06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).primaryColor),
                fixedWidth: screenWidth * 0.45,
                thumbDecoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                onValueChanged: (value) {
                  setState(() {
                    selected = value;
                  });
                },
              ),
            ),

            const SizedBox(
              height: 30,
            ),
            //the sized box for the songs
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: screenHeight * 0.6,
                width: double.infinity,
                child: buildscreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
