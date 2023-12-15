import 'package:kiddytunes/app_theme/custom_screenwidget.dart';

class SongmetaData {
  String songname;
  String lyrics;
  SongmetaData({
    required this.lyrics,
    required this.songname,
  });
}

List<SongmetaData> songlist = [
  SongmetaData(
    lyrics: 'Twinkle ,Twinkle ,little star,\n'
        'How i wondered what you are,\n'
        'High above the world so bright,\n'
        'like a diamond in the sky,\n'
        'Twinkle, Twinkle ,little star\n'
        'How i wonder what you are\n',
    songname: 'Twinkle little star',
  ),
  SongmetaData(
    lyrics: 'Baaaaby, shark doo doo doo',
    songname: 'Baby Shark',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Silent night',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Joy to the World',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Baa,Baa black sheep',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Mary had a little lamb',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Old mcDonald had a farm',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'if you\'re happy and you know it',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Row Row Row your boat',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Head, Shoulders, Knees, and Toes',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Itsy bitsy spider',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Alphabat song',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Rain Rain GO away',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Humpty dumpty',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'The hokey pokey',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'London bridge is falling down',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Skip to my Lou',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Jack and Jill',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'This old man',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'She\'ll be coming\'round the mountain',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Pop goes the weasel',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'The more we get together',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Five little monkeys',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Ten in the bed',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'I\'m a little teapot',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Down by the bay',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'The ants Go marching',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'I\'ve been working on the Railroad',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Six little ducks',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Apples and bananas',
  ),
  SongmetaData(
    lyrics: '',
    songname: 'Down by the station',
  ),
  SongmetaData(
    lyrics: '',
    songname: '',
  ),
];
//the list of screens
List screensList = [
  Customcard(
    title: songlist[0].songname,
    lyrics: songlist[0].lyrics,
  ),
  Customcard(
    title: songlist[1].songname,
    lyrics: songlist[1].lyrics,
  ),
  Customcard(
    title: songlist[2].songname,
    lyrics: songlist[2].lyrics,
  ),
  Customcard(
    title: songlist[3].songname,
    lyrics: songlist[3].lyrics,
  ),
  Customcard(
    title: songlist[4].songname,
    lyrics: songlist[4].lyrics,
  ),
  Customcard(
    title: songlist[5].songname,
    lyrics: songlist[5].lyrics,
  ),
  Customcard(
    title: songlist[6].songname,
    lyrics: songlist[6].lyrics,
  ),
  Customcard(
    title: songlist[7].songname,
    lyrics: songlist[7].lyrics,
  ),
  Customcard(
    title: songlist[8].songname,
    lyrics: songlist[8].lyrics,
  ),
  Customcard(
    title: songlist[9].songname,
    lyrics: songlist[9].lyrics,
  ),
  Customcard(
    title: songlist[10].songname,
    lyrics: songlist[10].lyrics,
  ),
  Customcard(
    title: songlist[11].songname,
    lyrics: songlist[11].lyrics,
  ),
  Customcard(
    title: songlist[12].songname,
    lyrics: songlist[12].lyrics,
  ),
  Customcard(
    title: songlist[13].songname,
    lyrics: songlist[13].lyrics,
  ),
  Customcard(
    title: songlist[14].songname,
    lyrics: songlist[14].lyrics,
  ),
  Customcard(
    title: songlist[15].songname,
    lyrics: songlist[15].lyrics,
  ),
  Customcard(
    title: songlist[16].songname,
    lyrics: songlist[16].lyrics,
  ),
  Customcard(
    title: songlist[17].songname,
    lyrics: songlist[17].lyrics,
  ),
  Customcard(
    title: songlist[18].songname,
    lyrics: songlist[18].lyrics,
  ),
  Customcard(
    title: songlist[19].songname,
    lyrics: songlist[19].lyrics,
  ),
  Customcard(
    title: songlist[20].songname,
    lyrics: songlist[20].lyrics,
  ),
  Customcard(
    title: songlist[21].songname,
    lyrics: songlist[21].lyrics,
  ),
  Customcard(
    title: songlist[22].songname,
    lyrics: songlist[22].lyrics,
  ),
  Customcard(
    title: songlist[23].songname,
    lyrics: songlist[23].lyrics,
  ),
  Customcard(
    title: songlist[24].songname,
    lyrics: songlist[24].lyrics,
  ),
  Customcard(
    title: songlist[25].songname,
    lyrics: songlist[25].lyrics,
  ),
  Customcard(
    title: songlist[26].songname,
    lyrics: songlist[26].lyrics,
  ),
  Customcard(
    title: songlist[27].songname,
    lyrics: songlist[27].lyrics,
  ),
  Customcard(
    title: songlist[28].songname,
    lyrics: songlist[28].lyrics,
  ),
  Customcard(
    title: songlist[29].songname,
    lyrics: songlist[29].lyrics,
  ),
  Customcard(
    title: songlist[30].songname,
    lyrics: songlist[30].lyrics,
  ),
];

final List<String> songsString = [
  songlist[0].songname,
  songlist[1].songname,
  songlist[2].songname,
  songlist[3].songname,
  songlist[4].songname,
  songlist[5].songname,
  songlist[6].songname,
  songlist[7].songname,
  songlist[8].songname,
  songlist[9].songname,
  songlist[10].songname,
  songlist[11].songname,
  songlist[12].songname,
  songlist[13].songname,
  songlist[14].songname,
  songlist[15].songname,
  songlist[16].songname,
  songlist[17].songname,
  songlist[18].songname,
  songlist[19].songname,
  songlist[20].songname,
  songlist[21].songname,
  songlist[22].songname,
  songlist[23].songname,
  songlist[24].songname,
  songlist[25].songname,
  songlist[26].songname,
  songlist[27].songname,
  songlist[28].songname,
  songlist[29].songname,
  songlist[30].songname
];
