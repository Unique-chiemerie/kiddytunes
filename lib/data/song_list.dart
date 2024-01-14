// import 'package:flutter/material.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'package:kiddytunes/app_theme/custom_screenwidget.dart';
import 'package:kiddytunes/screens/mainscreens/homescreen.dart';

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
    lyrics: lyricsMap['Twinkle little star'] ?? 'Lyrics not found',
    songname: 'Twinkle little star',
  ),
  SongmetaData(
    lyrics: lyricsMap['Baby Shark'] ?? 'Lyrics not found',
    songname: 'Baby Shark',
  ),
  SongmetaData(
    lyrics: lyricsMap['Silent night'] ?? 'Lyrics not found',
    songname: 'Silent night',
  ),
  SongmetaData(
    lyrics: lyricsMap['Joy to the World'] ?? 'Lyrics not found',
    songname: 'Joy to the World',
  ),
  SongmetaData(
    lyrics: lyricsMap['Baa,Baa black sheep'] ?? 'Lyrics not found',
    songname: 'Baa,Baa black sheep',
  ),
  SongmetaData(
    lyrics: lyricsMap['Mary had a little lamb'] ?? 'Lyrics not found',
    songname: 'Mary had a little lamb',
  ),
  SongmetaData(
    lyrics: lyricsMap['Old mcDonald had a farm'] ?? 'Lyrics not found',
    songname: 'Old mcDonald had a farm',
  ),
  SongmetaData(
    lyrics: lyricsMap['if you\'re happy and you know it'] ?? 'Lyrics not found',
    songname: 'if you\'re happy and you know it',
  ),
  SongmetaData(
    lyrics: lyricsMap['Row Row Row your boat'] ?? 'Lyrics not found',
    songname: 'Row Row Row your boat',
  ),
  SongmetaData(
    lyrics: lyricsMap['Head, Shoulders, Knees, and Toes'] ?? 'Lyrics not found',
    songname: 'Head, Shoulders, Knees, and Toes',
  ),
  SongmetaData(
    lyrics: lyricsMap['Itsy bitsy spider'] ?? 'Lyrics not found',
    songname: 'Itsy bitsy spider',
  ),
  SongmetaData(
    lyrics: lyricsMap['Alphabet song'] ?? 'Lyrics not found',
    songname: 'Alphabet song',
  ),
  SongmetaData(
    lyrics: lyricsMap['Rain Rain GO away'] ?? 'Lyrics not found',
    songname: 'Rain Rain GO away',
  ),
  SongmetaData(
    lyrics: lyricsMap['Humpty dumpty'] ?? 'Lyrics not found',
    songname: 'Humpty dumpty',
  ),
  SongmetaData(
    lyrics: lyricsMap['The wheels on the bus'] ?? 'Lyrics not found',
    songname: 'The wheels on the bus',
  ),
  SongmetaData(
    lyrics: lyricsMap['London bridge is falling down'] ?? 'Lyrics not found',
    songname: 'London bridge is falling down',
  ),
  SongmetaData(
    lyrics: lyricsMap['For he\'s a jolly good fellow'] ?? 'Lyrics not found',
    songname: 'For he\'s a jolly good fellow',
  ),
  SongmetaData(
    lyrics: lyricsMap['Jack and Jill'] ?? 'Lyrics not found',
    songname: 'Jack and Jill',
  ),
  SongmetaData(
    lyrics: lyricsMap['This old man'] ?? 'Lyrics not found',
    songname: 'This old man',
  ),
  SongmetaData(
    lyrics: lyricsMap['She\'ll be coming\'round the mountain'] ??
        'Lyrics not found',
    songname: 'She\'ll be coming\'round the mountain',
  ),
  SongmetaData(
    lyrics: lyricsMap['Pop goes the weasel'] ?? 'Lyrics not found',
    songname: 'Pop goes the weasel',
  ),
  SongmetaData(
    lyrics: lyricsMap['The more we get together'] ?? 'Lyrics not found',
    songname: 'The more we get together',
  ),
  SongmetaData(
    lyrics: lyricsMap['Five little monkeys'] ?? 'Lyrics not found',
    songname: 'Five little monkeys',
  ),
  SongmetaData(
    lyrics: lyricsMap['Ten in the bed'] ?? 'Lyrics not found',
    songname: 'Ten in the bed',
  ),
  SongmetaData(
    lyrics: lyricsMap['I\'m a little teapot'] ?? 'Lyrics not found',
    songname: 'I\'m a little teapot',
  ),
  SongmetaData(
    lyrics: lyricsMap['Baby bumblebee'] ?? 'Lyrics not found',
    songname: 'Baby bumblebee',
  ),
  SongmetaData(
    lyrics: lyricsMap['Jingle bells'] ?? 'Lyrics not found',
    songname: 'Jingle bells',
  ),
  SongmetaData(
    lyrics: lyricsMap['Deck the halls'] ?? 'Lyrics not found',
    songname: 'Deck the halls',
  ),
  SongmetaData(
    lyrics: lyricsMap['Rock-a-bye-baby'] ?? 'Lyrics not found',
    songname: 'Rock-a-bye-baby',
  ),
  SongmetaData(
    lyrics: lyricsMap['Bingo song'] ?? 'Lyrics not found',
    songname: 'Bingo song',
  ),
  SongmetaData(
    lyrics: lyricsMap['Hush little baby'] ?? 'Lyrics not found',
    songname: 'Hush little baby',
  ),
  SongmetaData(
    lyrics: lyricsMap[''] ?? 'Lyrics not found',
    songname: '',
  ),
];
final titleindex = Songlistprovider().filteredsongs;

//function to add the songs into a faveDB

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
//creating a map for the songs cuz of the search issue
Map<String, String> lyricsMap = {
  //twinkle twinkle
  'Twinkle little star': 'Twinkle ,Twinkle ,little star,\n'
      'How i wondered what you are,\n'
      'High above the world so bright,\n'
      'like a diamond in the sky,\n'
      'Twinkle, Twinkle ,little star\n'
      'How i wonder what you are\n',
  //baby shark
  'Baby Shark': '''Baby shark, doo doo doo doo doo doo\n
Baby shark, doo doo doo doo doo doo\n
Baby shark, doo doo doo doo doo doo\n
Baby shark!\n
\n
Mommy shark, doo doo doo doo doo doo\n
Mommy shark, doo doo doo doo doo doo\n
Mommy shark, doo doo doo doo doo doo\n
Mommy shark!\n

Daddy shark, doo doo doo doo doo doo\n
Daddy shark, doo doo doo doo doo doo\n
Daddy shark, doo doo doo doo doo doo\n
Daddy shark!\n
\n
Grandma shark, doo doo doo doo doo doo\n
Grandma shark, doo doo doo doo doo doo\n
Grandma shark, doo doo doo doo doo doo\n
Grandma shark!\n

Grandpa shark, doo doo doo doo doo doo\n
Grandpa shark, doo doo doo doo doo doo\n
Grandpa shark, doo doo doo doo doo doo\n
Grandpa shark!\n

Let's go hunt, doo doo doo doo doo doo\n
Let's go hunt, doo doo doo doo doo doo\n
Let's go hunt, doo doo doo doo doo doo\n
Let's go hunt!\n
\n
Run away, doo doo doo doo doo doo\n
Run away, doo doo doo doo doo doo\n
Run away, doo doo doo doo doo doo\n
Run away!\n
\n
Safe at last, doo doo doo doo doo doo\n
Safe at last, doo doo doo doo doo doo\n
Safe at last, doo doo doo doo doo doo\n
Safe at last!
''',
//silent night
  'Silent night': '''
Silent night, holy night,\n
All is calm, all is bright\n
Round yon Virgin, Mother and Child\n
Holy Infant so tender and mild,\n
Sleep in heavenly peace,\n
Sleep in heavenly peace.\n
\n
Silent night, holy night,\n
Shepherds quake at the sight;\n
Glories stream from heaven afar,\n
Heavenly hosts sing Alleluia!\n
Christ the Savior is born,\n
Christ the Savior is born.\n
\n
Silent night, holy night,\n
Son of God, love's pure light;\n
Radiant beams from Thy holy face\n
With the dawn of redeeming grace,\n
Jesus, Lord, at Thy birth,\n
Jesus, Lord, at Thy birth.\n
''',
//Joy to the world
  'Joy to the World': '''
Joy to the world, the Lord is come!.\n
Let earth receive her King;\n
Let every heart prepare Him room,\n
And heaven and nature sing,\n
And heaven and nature sing,\n
And heaven, and heaven, and nature sing.\n
\n
Joy to the world, the Savior reigns!\n
Let men their songs employ;\n
While fields and floods, rocks, hills, and plains\n
Repeat the sounding joy,\n
Repeat the sounding joy,\n
Repeat, repeat the sounding joy.\n
\n
No more let sins and sorrows grow,\n
Nor thorns infest the ground;\n
He comes to make His blessings flow\n
Far as the curse is found,\n
Far as the curse is found,\n
Far as, far as, the curse is found.\n
\n
He rules the world with truth and grace,\n
And makes the nations prove\n
The glories of His righteousness,\n
And wonders of His love,\n
And wonders of His love,\n
And wonders, wonders, of His love.\n
''',
//baa black sheep
  'Baa,Baa black sheep': '''
Baa, baa, black sheep, have you any wool?\n
Yes sir, yes sir, three bags full.\n
One for the master, one for the dame,\n
And one for the little boy who lives down the lane.\n
\n
Baa, baa, black sheep, have you any wool?\n
Yes sir, yes sir, three bags full.\n
''',
//Mary had a little lamb
  'Mary had a little lamb': '''
Mary had a little lamb,\n
Little lamb, little lamb,\n
Mary had a little lamb,\n
Its fleece was white as snow.\n
\n
And everywhere that Mary went,\n
Mary went, Mary went,\n
Everywhere that Mary went,\n
The lamb was sure to go.\n
\n
It followed her to school one day,\n
School one day, school one day,\n
It followed her to school one day,\n
Which was against the rule.\n
\n
It made the children laugh and play,\n
Laugh and play, laugh and play,\n
It made the children laugh and play,\n
To see a lamb at school.\n
\n
And so the teacher turned it out,\n
Turned it out, turned it out,\n
And so the teacher turned it out,\n
But still it lingered near.\n
\n
And waited patiently about,\n
Patiently about, patiently about,\n
And waited patiently about,\n
Till Mary did appear.\n
\n
"Why does the lamb love Mary so?"\n
Love Mary so? Love Mary so?\n
"Why does the lamb love Mary so?"\n
The eager children cry.\n
\n
"Why, Mary loves the lamb, you know,"\n
Loves the lamb, you know, loves the lamb, you know,\n
"Why, Mary loves the lamb, you know,"\n
The teacher did reply.\n
''',
// old mc donald had a farm
  'Old mcDonald had a farm': '''
Old MacDonald had a farm, E-I-E-I-O,\n
And on his farm, he had a cow, E-I-E-I-O,\n
With a moo-moo here and a moo-moo there,\n
Here a moo, there a moo, everywhere a moo-moo,\n
Old MacDonald had a farm, E-I-E-I-O.\n
\n
Old MacDonald had a farm, E-I-E-I-O,\n
And on his farm, he had a pig, E-I-E-I-O,\n
With an oink-oink here and an oink-oink there,\n
Here an oink, there an oink, everywhere an oink-oink,\n
Old MacDonald had a farm, E-I-E-I-O.
''',
//if you're happy and you know it
  'if you\'re happy and you know it': '''
If you're happy and you know it, clap your hands (clap clap)\n
If you're happy and you know it, clap your hands (clap clap)\n
If you're happy and you know it, then your face will surely show it,\n
If you're happy and you know it, clap your hands (clap clap)\n
\n
If you're happy and you know it, stomp your feet (stomp stomp)\n
If you're happy and you know it, stomp your feet (stomp stomp)\n
If you're happy and you know it, then your face will surely show it,\n
If you're happy and you know it, stomp your feet (stomp stomp)\n
\n
If you're happy and you know it, shout "Hooray!" (Hooray!)\n
If you're happy and you know it, shout "Hooray!" (Hooray!)\n
If you're happy and you know it, then your face will surely show it,\n
If you're happy and you know it, shout "Hooray!" (Hooray!)\n
\n
If you're happy and you know it, do all three,\n
Clap your hands (clap clap), stomp your feet (stomp stomp),\n
Shout "Hooray!" (Hooray!)\n
\n
If you're happy and you know it, then your face will surely show it,\n
If you're happy and you know it, do all three.\n0-=0=
''',
//row your boat
  'Row Row Row your boat': '''
Row, row, row your boat,\n
Gently down the stream.\n
Merrily, merrily, merrily, merrily,\n
Life is but a dream.\n
\n
Row, row, row your boat,\n
Gently down the stream.\n
If you see a crocodile,\n
Don't forget to scream! (Ahh!)\n
\n
Row, row, row your boat,\n
Gently to the shore.\n
If you see a lion there,\n
Don't forget to roar! (Roar!)\n
\n
Row, row, row your boat,\n
Watch the water flow.\n
Rowing's fun, but rowing's hard,\n
That is what I know.\n
\n
Row, row, row your boat,\n
Gently down the stream.\n
Merrily, merrily, merrily, merrily,\n
Life is but a dream.\n
''',
  'Head, Shoulders, Knees, and Toes': '''
Head, shoulders, knees, and toes,\n
Knees and toes, knees and toes,\n
Head, shoulders, knees, and toes,\n
Eyes, ears, mouth, and nose.\n
\n
Head, shoulders, knees, and toes,\n
Knees and toes, knees and toes,\n
Head, shoulders, knees, and toes,\n
Eyes, ears, mouth, and nose.\n
\n
Eyes and ears and mouth and nose,\n
Head, shoulders, knees, and toes,\n
Eyes and ears and mouth and nose,\n
Head, shoulders, knees, and toes.\n
''',
  'Itsy bitsy spider': '''
The itsy bitsy spider climbed up the water spout,\n
Down came the rain and washed the spider out.\n
Out came the sun and dried up all the rain,\n
And the itsy bitsy spider climbed up the spout again.\n
\n
The itsy bitsy spider climbed up the water spout,\n
Down came the rain and washed the spider out.\n
Out came the sun and dried up all the rain,\n
And the itsy bitsy spider climbed up the spout again.\n
\n
The itsy bitsy spider climbed up the kitchen wall,\n
Swoosh went the fan and made the spider fall.\n
Off went the fan, no longer did it blow,\n
So the itsy bitsy spider back up the wall did go.\n
\n
The itsy bitsy spider climbed up the garden stem,\n
Then came the snow and made the spider freeze.\n
Out came the sun and melted all the snow,\n
And the itsy bitsy spider climbed up the stem again.\n
\n
The itsy bitsy spider climbed up the bedroom door,\n
Silently it crawled across the bedroom floor.\n
Right into bed to spin a cozy thread,\n
And the itsy bitsy spider snuggled in and said:\n
Goodnight!
''',
//the alpahbet song
  'Alphabet song': '''
A, B, C, D, E, F, G,\n
H, I, J, K, L, M, N, O, P,\n
Q, R, S, T, U, V,\n
x,Y, and Z.\n
\n
Now I know my ABCs,\n
Next time, won't you sing with me?
''',
//rain song
  'Rain Rain GO away': '''
Rain, rain, go away,\n
Come again another day.\n
Little Johnny wants to play;\n
Rain, rain, go away.\n
\n
Rain, rain, go away,\n
Come again another day.\n
Little Suzy wants to play;\n
Rain, rain, go away.\n
\n
Rain, rain, go away,\n
Come again another day.\n
Little children want to play;\n
Rain, rain, go away.\n
\n
Rain, rain, go away,\n
Come again another day.\n
All the family wants to play;\n
Rain, rain, go away.
''',
//humpty dumpty
  'Humpty dumpty': '''
Humpty Dumpty sat on a wall,\n
Humpty Dumpty had a great fall.\n
All the king's horses and all the king's men\n
Couldn't put Humpty together again.
''',
//wheels on the bus
  'The wheels on the bus': '''
The wheels on the bus go round and round,\n
Round and round, round and round.\n
The wheels on the bus go round and round,\n
All through the town.\n

The wipers on the bus go swish, swish, swish,\n
Swish, swish, swish, swish, swish, swish.\n
The wipers on the bus go swish, swish, swish,\n
All through the town.\n
\n
The horn on the bus goes beep, beep, beep,\n
Beep, beep, beep, beep, beep, beep.\n
The horn on the bus goes beep, beep, beep,\n
All through the town.\n
\n
The doors on the bus go open and shut,\n
Open and shut, open and shut.\n
The doors on the bus go open and shut,\n
All through the town.\n
\n
The driver on the bus says, "Move on back,\n
Move on back, move on back."\n
The driver on the bus says, "Move on back,"\n
All through the town.\n
\n
The babies on the bus go, "Wah, wah, wah,\n
Wah, wah, wah, wah, wah, wah."\n
The babies on the bus go, "Wah, wah, wah,"\n
All through the town.\n

The people on the bus go up and down,\n
Up and down, up and down.\n
The people on the bus go up and down,\n
All through the town.\n
\n
The motor on the bus goes zoom, zoom, zoom,\n
Zoom, zoom, zoom, zoom, zoom, zoom.\n
The motor on the bus goes zoom, zoom, zoom,\n
All through the town.
''',
//london bridge
  'London bridge is falling down': '''
London Bridge is falling down,\n
Falling down, falling down,\n
London Bridge is falling down,\n
My fair lady.\n
\n
Build it up with silver and gold,\n
Silver and gold, silver and gold,\n
Build it up with silver and gold,\n
My fair lady.\n
\n
London Bridge is falling ndown,\n
Falling down, falling down,\n
London Bridge is falling down,\n
My fair lady.\n
\n
Build it up with wood and clay,\n
Wood and clay, wood and clay,\n
Build it up with wood and clay,\n
My fair lady.\n
\n
London Bridge is falling down,\n
Falling down, falling down,\n
London Bridge is falling down,\n
My fair lady.\n
\n
Build it up with bricks and mortar,\n
Bricks and mortar, bricks and mortar,\n
Build it up with bricks and mortar,\n
My fair lady.\n
\n
London Bridge is standing strong,\n
Standing strong, standing strong,\n
London Bridge is standing strong,\n
My fair lady.\n
''',
//skip to my lou
  'For he\'s a jolly good fellow': '''
For he's a jolly good fellow, for he's a jolly good fellow\n
For he's a jolly good fellow, and so say all of us\n
And so say all of us, and so say all of us\n
For he's a jolly good fellow, for he's a jolly good fellow\n
For he's a jolly good fellow, and so say all of us!\n
''',
  'Jack and Jill': '''
Jack and Jill went up the hill\n
To fetch a pail of water.\n
Jack fell down and broke his crown,\n
And Jill came tumbling after.\n
\n
Up Jack got and home did trot,\n
As fast as he could caper;\n
And went to bed and bound his head\n
With vinegar and brown paper.\n
\n
When Jill came in how she did grin\n
To see Jack's paper plaster;\n
Mother vexed did whip her next\n
For causing Jack's disaster.
''',
//this old man
  'This old man': '''
This old man, he played one,\n
He played knick-knack on my drum.\n
With a knick-knack, paddy whack,\n
Give the dog a bone,\n
This old man came rolling home.\n
\n
This old man, he played two,\n
He played knick-knack on my shoe.\n
With a knick-knack, paddy whack,\n
Give the dog a bone,\n
This old man came rolling home.\n
\n
This old man, he played three,\n
He played knick-knack on my knee.\n
With a knick-knack, paddy whack,\n
Give the dog a bone,\n
This old man came rolling home.\n
\n
This old man, he played four,\n
He played knick-knack on my door.\n
With a knick-knack, paddy whack,\n
Give the dog a bone,\n
This old man came rolling home.\n
\n
This old man, he played five,\n
He played knick-knack on my hive.\n
With a knick-knack, paddy whack,\n
Give the dog a bone,\n
This old man came rolling home.\n
\n
This old man, he played six,\n
He played knick-knack with some sticks.\n
With a knick-knack, paddy whack,\n
Give the dog a bone,\n
This old man came rolling home.\n
\n
This old man, he played seven,\n
He played
''',
  'She\'ll be coming\'round the mountain': '''
She'll be coming 'round the mountain when she comes,\n
She'll be coming 'round the mountain when she comes,\n
She'll be coming 'round the mountain,\n
She'll be coming 'round the mountain,\n
She'll be coming 'round the mountain when she comes.\n
\n
She'll be driving six white horses when she comes,\n
She'll be driving six white horses when she comes,\n
She'll be driving six white horses,\n
She'll be driving six white horses,\n
She'll be driving six white horses when she comes.\n
\n
Oh, we'll all go out to meet her when she comes,\n
Oh, we'll all go out to meet her when she comes,\n
Oh, we'll all go out to meet her,\n
We'll all go out to meet her,\n
Oh, we'll all go out to meet her when she comes.\n
\n
She'll be wearing red pajamas when she comes,\n
She'll be wearing red pajamas when she comes,\n
She'll be wearing red pajamas,\n
She'll be wearing red pajamas,\n
She'll be wearing red pajamas when she comes.\n
\n
We'll be shouting "Hallelujah" when she comes,\n
We'll be shouting "Hallelujah" when she comes,\n
We'll be shouting "Hallelujah,"\n
We'll be shouting "Hallelujah,"\n
We'll be shouting "Hallelujah" when she comes.\n
    ''',
  //pop goes the weasel
  'Pop goes the weasel': '''
All around the cobbler's bench,\n
The monkey chased the weasel.\n
The monkey thought 'twas all in fun,\n
Pop! goes the weasel.\n
\n
A penny for a spool of thread,\n
A penny for a needle.\n
That's the way the money goes,\n
Pop! goes the weasel.\n
\n
Up and down the City Road,\n
In and out of the Eagle,\n
That's the way the money goes,\n
Pop! goes the weasel.\n
\n
Every night when I go out,\n
The monkey's on the table,\n
Take a stick and knock it off,\n
Pop! goes the weasel.\n
\n
Half a pound of tuppenny rice,\n
Half a pound of treacle.\n
Mix it up and make it nice,\n
Pop! goes the weasel.\n
\n
Up and down the City Road,\n
In and out of the Eagle,\n
That's the way the money goes,\n
Pop! goes the weasel.\n
\n
Pop goes the weasel,\n
Pop goes the weasel,\n
Pop goes the weasel,\n
Pop! goes the weasel.\n
''',
//the more we get together
  'The more we get together': '''
The more we get together, together, together,\n
The more we get together, the happier we'll be.\n
For your friends are my friends, and my friends are your friends,\n
The more we get together, the happier we'll be.\n
We're singing, "Rain or shine," you'll always be a friend of mine,\n
We'll be friends forever, no matter what the weather.\n
''',
//five little monkeys
  'Five little monkeys': '''
Five little monkeys jumping on the bed,\n
One fell off and bumped his head.\n
Mama called the doctor and the doctor said,\n
"No more monkeys jumping on the bed!"\n
Four little monkeys jumping on the bed,\n
One fell off and bumped his head.\n
Mama called the doctor and the doctor said,\n
"No more monkeys jumping on the bed!"\n
\n
Three little monkeys jumping on the bed,\n
One fell off and bumped his head.\n
Mama called the doctor and the doctor said,\n
"No more monkeys jumping on the bed!"\n
\n
Two little monkeys jumping on the bed,\n
One fell off and bumped his head.\n
Mama called the doctor and the doctor said,\n
"No more monkeys jumping on the bed!"\n
\n
One little monkey jumping on the bed,\n
He fell off and bumped his head.\n
Mama called the doctor and the doctor said,\n
"Put those monkeys straight to bed!"\n
\n
No little monkeys jumping on the bed,\n
None fell off and bumped their heads.\n
Mama called the doctor and the doctor said,\n
"No more monkeys jumping on the bed!"
''',
//Ten in the bed
  'Ten in the bed': '''
There were ten in the bed,\n
And the little one said,\n
"Roll over, roll over!"\n
So they all rolled over,\n
And one fell out.\n
\n
There were nine in the bed,\n
And the little one said,\n
"Roll over, roll over!"\n
So they all rolled over,\n
And one fell out.\n
\n
There were eight in the bed,\n
And the little one said,\n
"Roll over, roll over!"\n
So they all rolled over,\n
And one fell out.\n
\n
There were seven in the bed,\n
And the little one said,\n
"Roll over, roll over!"\n
So they all rolled over,\n
And one fell out.\n
\n
There were six in the bed,\n
And the little one said,\n
"Roll over, roll over!"\n
So they all rolled over,\n
And one fell out.\n
\n
There were five in the bed,\n
And the little one said,\n
"Roll over, roll over!"\n
So they all rolled over,\n
And one fell out.\n
\n
There were four in the bed,\n
And the little one said,\n
"Roll over, roll over!"\n
So they all rolled over,\n
And one fell out.\n
\n
There were three in the bed,\n
And the little one said,\n
"Roll over, roll over!"\n
So they all rolled over,\n
And one fell out.\n
\n
There were two in the bed,\n
And the little one said,\n
"Roll over, roll over!"\n
So they all rolled over,\n
And one fell out.\n
\n
There was one in the bed,\n
And the little one said,\n
"Goodnight!"
''',
//teapot song
  'I\'m a little teapot': '''
I'm a little teapot, short and stout,\n
Here is my handle, here is my spout.\n
When I get all steamed up, hear me shout,\n
Tip me over and pour me out!
''',
//Baby bumblebee
  'Baby bumblebee': '''
I'm bringing home my baby bumble bee\n
Won't my Mommy be so proud of me\n
I'm bringing home my baby bumble bee\n
Ouch! It stung me!\n
\n
I'm squishin' up my baby bumble bee\n
Won't my Mommy be so proud of me\n
I'm squishin' up my baby bumble bee\n
Ooh! It's yucky!\n
\n
I'm lickin' up my baby bumble bee\n
Won't my Mommy be so proud of me\n
I'm lickin' up my baby bumble bee\n
Ick! I feel sick!\n
\n
I'm throwin' up my baby bumble bee\n
Won't my Mommy be so proud of me\n
I'm throwin' up my baby bumble bee\n
Ooh! What a mess!\n
\n
5. I'm wipin' up my baby bumble bee\n
Won't my Mommy be so proud of me\n
I'm wipin' up my baby bumble bee\n
Oops!! Mommy's new towel!
''',
//Jingle bells
  'Jingle bells': '''
Dashing through the snow\n
In a one horse open sleigh
O'er the fields we go\n
Laughing all the way\n
Bells on bob tails ring\n
Making spirits bright\n
What fun it is to laugh and sing\n
A sleighing song tonight\n
\n
Oh, jingle bells, jingle bells\n
Jingle all the way\n
Oh, what fun it is to ride\n
In a one horse open sleigh\n
Jingle bells, jingle bells\n
Jingle all the way\n
Oh, what fun it is to ride\n
In a one horse open sleigh\n
\n
A day or two ago\n
I thought I'd take a ride\n
And soon Miss Fanny Bright\n
Was seated by my side\n
The horse was lean and lank\n
Misfortune seemed his lot\n
We got into a drifted bank\n
And then we got upsot\n
\n
Oh, jingle bells, jingle bells\n
Jingle all the way\n
Oh, what fun it is to ride\n
In a one horse open sleigh\n
Jingle bells, jingle bells\n
Jingle all the way\n
Oh, what fun it is to ride\n
In a one horse open sleigh yeah\n
\n
A day or two ago,\n
The story I must tell\n
I went out on the snow,\n
And on my back I fell;\n
A gent was riding by\n
In a one-horse open sleigh,\n
He laughed as there I sprawling lie,\n
But quickly drove away.\n
\n
Jingle bells, jingle bells\n
Jingle all the way\n
Oh, what fun it is to ride\n
In a one horse open sleigh\n
Jingle bells, jingle bells\n
Jingle all the way\n
Oh, what fun it is to ride\n
In a one horse open sleigh\n
\n
Now the ground is white\n
Go it while you're young,\n
Take the girls tonight\n
and sing this sleighing song;\n
Just get a bobtailed bay\n
Two forty as his speed\n
Hitch him to an open sleigh\n
And crack! you'll take the lead.\n
\n
Jingle bells, jingle bells\n
Jingle all the way\n
Oh, what fun it is to ride\n
In a one horse open sleigh\n
Jingle bells, jingle bells\n
Jingle all the way\n
Oh, what fun it is to ride\n
In a one horse open sleigh
''',
//Deck the halls
  'Deck the halls': '''
Deck the halls with boughs of holly,\n
Fa la la la la, la la la la.\n
'Tis the season to be jolly,\n
Fa la la la la, la la la la.\n
Don we now our gay apparel,\n
Fa la la, la la la, la la la.\n
Toll the ancient Yuletide carol,\n
Fa la la la la, la la la la.\n
\n
See the blazing Yule before us,\n
Fa la la la la, la la la la.\n
Strike the harp and join the chorus.\n
Fa la la la la, la la la la.\n
Follow me in merry measure,\n
Fa la la la la, la la la la.\n
While I tell of Christmas treasure,\n
Fa la la la la, la la la la.\n
\n
Fast away the old year passes,\n
Fa la la la la, la la la la.\n
Hail the new, ye lads and lasses,\n
Fa la la la la, la la la la.\n
Sing we joyous, all together,\n
Fa la la la la, la la la la.\n
Heedless of the wind and weather,\n
Fa la la la la, la la la la\n
''',
//rock-a-bye-baby
  'Rock-a-bye-baby': '''
Rock-a-bye baby\n
On the treetop\n
When the wind blows\n
The cradle will rock,\n
When the bough breaks\n
The cradle will fall\n
And down will come baby\n
Cradle and all.\n
''',
//bingo sonng
  'Bingo song': '''
There was a farmer had a dog,\n
And Bingo was his name-o.\n
B-I-N-G-O,\n
B-I-N-G-O,\n
B-I-N-G-O,\n
And Bingo was his name-o.\n
\n
There was a farmer had a dog,\n
And Bingo was his name-o.\n
(Clap)-I-N-G-O,\n
(Clap)-I-N-G-O,\n
(Clap)-I-N-G-O,\n
And Bingo was his name-o.\n
\n
There was a farmer had a dog,\n
And Bingo was his name-o.\n
(Clap, Clap)-N-G-O,\n
(Clap, Clap)-N-G-O,\n
(Clap, Clap)-N-G-O,\n
And Bingo was his name-o.\n
\n
There was a farmer had a dog,\n
And Bingo was his name-o.\n
(Clap, Clap, Clap)-G-O,\n
(Clap, Clap, Clap)-G-O,\n
(Clap, Clap, Clap)-G-O,\n
And Bingo was his name-o.\n
\n
There was a farmer had a dog,\n
And Bingo was his name-o.\n
(Clap, Clap, Clap, Clap)-O,\n
(Clap, Clap, Clap, Clap)-O,\n
(Clap, Clap, Clap, Clap)-O,\n
And Bingo was his name-o.
''',
//
  'Hush little baby': '''
Hush, little baby, don't say a word,\n
Mama's gonna buy you a mockingbird.\n
\n
If that mockingbird won't sing,\n
Mama's gonna buy you a diamond ring.\n
\n
If that diamond ring turns brass,\n
Mama's gonna buy you a looking glass.\n
\n
If that looking glass gets broke,\n
Mama's gonna buy you a billy goat.\n
\n
If that billy goat won't pull,\n
Mama's gonna buy you a cart and bull.\n
\n
If that cart and bull turn over,\n
Mama's gonna buy you a dog named Rover.\n
\n
If that dog named Rover won't bark,\n
Mama's gonna buy you a horse and cart.\n
\n
If that horse and cart fall down,\n
You'll still be the sweetest little baby in town.\n
''',
  '': ""
};
