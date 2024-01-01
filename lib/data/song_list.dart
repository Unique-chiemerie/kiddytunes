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
    lyrics: '',
    songname: 'Twinkle little star',
  ),
  SongmetaData(
    lyrics: '',
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
    songname: 'Alphabet song',
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
    lyrics: ' ',
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
final titleindex = Songlistprovider().filteredsongs;

//function to add the songs into a faveDB

//the list of screens
List screensList = [
  Customcard(
    title: songlist[0].songname,
    lyrics: songlist[0].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[1].songname,
    lyrics: songlist[1].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[2].songname,
    lyrics: songlist[2].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[3].songname,
    lyrics: songlist[3].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[4].songname,
    lyrics: songlist[4].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[5].songname,
    lyrics: songlist[5].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[6].songname,
    lyrics: songlist[6].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[7].songname,
    lyrics: songlist[7].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[8].songname,
    lyrics: songlist[8].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[9].songname,
    lyrics: songlist[9].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[10].songname,
    lyrics: songlist[10].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[11].songname,
    lyrics: songlist[11].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[12].songname,
    lyrics: songlist[12].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[13].songname,
    lyrics: songlist[13].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[14].songname,
    lyrics: songlist[14].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[15].songname,
    lyrics: songlist[15].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[16].songname,
    lyrics: songlist[16].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[17].songname,
    lyrics: songlist[17].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[18].songname,
    lyrics: songlist[18].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[19].songname,
    lyrics: songlist[19].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[20].songname,
    lyrics: songlist[20].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[21].songname,
    lyrics: songlist[21].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[22].songname,
    lyrics: songlist[22].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[23].songname,
    lyrics: songlist[23].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[24].songname,
    lyrics: songlist[24].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[25].songname,
    lyrics: songlist[25].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[26].songname,
    lyrics: songlist[26].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[27].songname,
    lyrics: songlist[27].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[28].songname,
    lyrics: songlist[28].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[29].songname,
    lyrics: songlist[29].lyrics,
    onpressed: () {},
  ),
  Customcard(
    title: songlist[30].songname,
    lyrics: songlist[30].lyrics,
    onpressed: () {},
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
  'silent night': '''
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
Old MacDonald had a farm, E-I-E-I-O.\n
\n
Old MacDonald had a farm, E-I-E-I-O,\n
And on his farm, he had a duck, E-I-E-I-O,\n
With a quack-quack here and a quack-quack there,\n
Here a quack, there a quack, everywhere a quack-quack,\n
Old MacDonald had a farm, E-I-E-I-O.\n
\n
Old MacDonald had a farm, E-I-E-I-O,\n
And on his farm, he had a horse, E-I-E-I-O,\n
With a neigh-neigh here and a neigh-neigh there,\n
Here a neigh, there a neigh, everywhere a neigh-neigh,\n
Old MacDonald had a farm, E-I-E-I-O.\n
\n
Old MacDonald had a farm, E-I-E-I-O,\n
And on his farm, he had some chicks, E-I-E-I-O,\n
With a cheep-cheep here and a cheep-cheep there,\n
Here a cheep, there a cheep, everywhere a cheep-cheep,\n
Old MacDonald had a farm, E-I-E-I-O.\n
\n
Old MacDonald had a farm, E-I-E-I-O,\n
And on his farm, he had a dog, E-I-E-I-O,\n
With a woof-woof here and a woof-woof there,\n
Here a woof, there a woof, everywhere a woof-woof,\n
Old MacDonald had a farm, E-I-E-I-O.\n
\n
Old MacDonald had a farm, E-I-E-I-O,\n
And on his farm, he had a cat, E-I-E-I-O,\n
With a meow-meow here and a meow-meow there,\n
Here a meow, there a meow, every
''',
//if you're happy and you know it
  'if you\'re happy and you know it': '''
If you're happy and you know it, clap your hands (clap clap)\n
If you're happy and you know it, clap your hands (clap clap)\n
If you're happy and you know it, then your face will surely show it,\n
If you're happy and you know it, clap your hands (clap clap)\n
\n
If you're happy and you know nit, stomp your feet (stomp stomp)\n
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
If you're happy and you know it, do all three.\n
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
W, X, Y, and Z.\n
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
//hokey pokey
  'The hokey pokey': '''
You put your right hand in,\n
You take your right hand out,\n
You put your right hand in,\n
And you shake it all about.\n
You do the Hokey Pokey,\n
And you turn yourself around,\n
That's what it's all about!\n
\n
You put your left hand in,\n
You take your left hand out,\n
You put your left hand in,\n
And you shake it all about.\n
You do the Hokey Pokey,\n
And you turn yourself around,\n
That's what it's all about!\n
\n
You put your right foot in,\n
You take your right foot out,\n
You put your right foot in,\n
And you shake it all about.\n
You do the Hokey Pokey,\n
And you turn yourself around,\n
That's what it's all about!\n

You put your left foot in,\n
You take your left foot out,\n
You put your left foot in,\n
And you shake it all about.\n
You do the Hokey Pokey,\n
And you turn yourself around,\n
That's what it's all about!\n
\n
You put your whole self in,\n
You take your whole self out,\n
You put your whole self in,\n
And you shake it all about.\n
You do the Hokey Pokey,\n
And you turn yourself around,\n
That's what it's all about!\n
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
  'Skip to my Lou': '''
Skip, skip, skip to my Lou,\n
Skip, skip, skip to my Lou,\n
Skip, skip, skip to my Lou,\n
Skip to my Lou, my darlin'.\n
\n
Lou, Lou, skip to my Lou,\n
Lou, Lou, skip to my Lou,\n
Lou, Lou, skip to my Lou,\n
Skip to my Lou, my darlin'.\n
\n
Lost my partner, what'll I do?\n
Lost my partner, what'll I do?\n
Lost my partner, what'll I do?\n
Skip to my Lou, my darlin'.\n
\n
I'll find another one prettier than you,\n
I'll find another one prettier than you,\n
I'll find another one prettier than you,\n
Skip to my Lou, my darlin'.\n
\n
Skip, skip, skip to my Lou,\n
Skip, skip, skip to my Lou,\n
Skip, skip, skip to my Lou,\n
Skip to my Lou, my darlin'.\n
''',
  'Jack and Jill': '''
Jack and Jill went up the hill\n
To fetch a pail of water.\n
Jack fell down and broke his crown,\n
And Jill came tumbling after.\n
\n
Up Jack got and home did trot\n
As fast as he could caper;\n
To Old Dame Dob who patched his nob\n
With vinegar and brown paper.\n
\n
Then up Jack got and home did trot\n
As fast as he could caper;\n
To Old Dame Dob who patched his nob\n
With vinegar and brown paper.\n
\n
Then up Jack got and home did trot\n
As fast as he could caper;\n
To Old Dame Dob who patched his nob\n
With vinegar and brown paper.\n
\n
Then up Jack got and home did trot\n
As fast as he could caper;\n
To Old Dame Dob who patched his nob\n
With vinegar and brown paper.\n
\n
Jill came in and she did grin\n
To see his paper plaster;\n
Mother vexed did whip her next\n
For causing Jack's disaster.\n
\n
Then up Jack got and home did trot\n
As fast as he could caper;\n
To Old Dame Dob who patched his nob\n
With vinegar and brown paper.\n
\n
Then up Jack got and home did trot\n
As fast as he could caper;\n
To Old Dame Dob who patched his nob\n
With vinegar and brown paper.\n
\n
Then up Jack got and home did trot\n
As fast as he could caper;\n
To Old Dame Dob who patched his nob\n
With vinegar and brown paper.\n
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
//down by the bay
  'Down by the bay': '''
Down by the bay,\n
Where the watermelons grow,\n
Back to my home,\n
I dare not go.\n
\n
For if I do,\n
My mother will say,\n
"Did you ever see a goose\n
Kissing a moose?\n
\n
Down by the bay."
\n
Down by the bay,\n
Where the watermelons grow,\n
Back to my home,\n
I dare not go.\n
\n
For if I do,\n
My mother will say,\n
"Did you ever see a cat\n
Wearing a hat?\n
\n
Down by the bay."
\n
Down by the bay,\n
Where the watermelons grow,\n
Back to my home,\n
I dare not go.\n
\n
For if I do,\n
My mother will say,\n
"Did you ever see a whale\n
With a polka-dot tail?\n
\n
Down by the bay."
\n
Down by the bay,\n
Where the watermelons grow,\n
Back to my home,\n
I dare not go.\n
\n
For if I do,\n
My mother will say,\n
"Did you ever see a fly\n
Wearing a tie?\n
\n
Down by the bay."
\n
Down by the bay,\n
Where the watermelons grow,\n
Back to my home,\n
I dare not go.\n
\n
For if I do,\n
My mother will say,\n
"Did you ever see a bear\n
Combing his hair?\n
\n
Down by the bay."
\n
Down by the bay,\n
Where the watermelons grow,\n
Back to my home,\n
I dare not go.\n
\n
For if I do,\n
My mother will say,\n
"Did you ever see a llama\n
Wearing pajamas?\n
\n
Down by the bay."
\n
Down by the bay,\n
Where the watermelons grow,\n
Back to my home,\n
I dare not go.\n
\n
For if I do,\n
My mother will say,\n
"Have you ever seen a goat\n
Rowing a boat?\n
\n
Down by the bay."
''',
//The ants goes marching
  'The ants Go marching': '''
The ants go marching one by one, hurrah, hurrah!\n
The ants go marching one by one, hurrah, hurrah!\n
The ants go marching one by one,\n
The little one stops to suck his thumb,\n
And they all go marching down to the ground\n
To get out of the rain, boom, boom, boom, boom!\n
\n
The ants go marching two by two, hurrah, hurrah!\n
The ants go marching two by two, hurrah, hurrah!\n
The ants go marching two by two,\n
The little one stops to tie his shoe,\n
And they all go marching down to the ground\n
To get out of the rain, boom, boom, boom, boom!\n
\n
The ants go marching three by three, hurrah, hurrah!\n
The ants go marching three by three, hurrah, hurrah!\n
The ants go marching three by three,\n
The little one stops to climb a tree,\n
And they all go marching down to the ground\n
To get out of the rain, boom, boom, boom, boom!\n
\n
The ants go marching four by four, hurrah, hurrah!\n
The ants go marching four by four, hurrah, hurrah!\n
The ants go marching four by four,\n
The little one stops to shut the door,\n
And they all go marching down to the ground\n
To get out of the rain, boom, boom, boom, boom!\n
\n
The ants go marching five by five, hurrah, hurrah!\n
The ants go marching five by five, hurrah, hurrah!\n
The ants go marching five by five,\n
The little one stops to take a dive,\n
And they all go marching down to the ground\n
To get out of the rain, boom, boom, boom, boom!\n
\n
The ants go marching ten by ten, hurrah, hurrah!\n
The ants go marching ten by ten, hurrah, hurrah!\n
The ants go marching ten by ten,\n
The little one stops to shout, "The end!"\n
And they all go marching down to the ground\n
To get out of the rain, boom, boom, boom, boom!\n
''',

  'I\'ve been working on the Railroad': '''
I've been working on the railroad,\n
All the live-long day.\n
I've been working on the railroad,\n
Just to pass the time away.\n
\n
Can't you hear the whistle blowing?\n
Rise up so early in the morn.\n
Can't you hear the captain shouting,\n
"Dinah, blow your horn!"\n
\n
Dinah, won't you blow,\n
Dinah, won't you blow,\n
Dinah, won't you blow your horn?\n
Dinah, won't you blow,\n
Dinah, won't you blow,\n
Dinah, won't you blow your horn?\n
\n
Someone's in the kitchen with Dinah,\n
Someone's in the kitchen, I know.\n
Someone's in the kitchen with Dinah,\n
Strumming on the old banjo.\n
\n
And singing,\n
Fee, fie, fiddly-i-o,\n
Fee, fie, fiddly-i-o-o-o,\n
Fee, fie, fiddly-i-o,\n
Strumming on the old banjo.\n

I've been working on the railroad,\n
All the live-long day.\n
I've been working on the railroad,\n
Just to pass the time away.\n
\n
Can't you hear the whistle blowing?\n
Rise up so early in the morn.\n
Can't you hear the captain shouting,\n
"Dinah, blow your horn!"\n
\n
Dinah, won't you blow,\n
Dinah, won't you blow,\n
Dinah, won't you blow your horn?\n
Dinah, won't you blow,\n
Dinah, won't you blow,\n
Dinah, won't you blow your horn?\n
''',
  'Six little ducks': '''
Six little ducks that I once knew,\n
Fat ones, skinny ones, fair ones too.\n
But the one little duck with the feather on his back,\n
He led the others with his quack, quack, quack.\n
\n
Quack, quack, quack,\n
He led the others with his quack, quack, quack.\n
\n
Down to the river they would go,\n
Wibble wobble, wibble wobble, to and fro.\n
But the one little duck with the feather on his back,\n
He led the others with his quack, quack, quack.\n
\n
Quack, quack, quack,\n
He led the others with his quack, quack, quack.\n
Back from the river they would come,\n
Wibble wobble, wibble wobble, ho, hum, hum.\n
But the one little duck with the feather on his back,\n
He led the others with his quack, quack, quack.\n
\n
Quack, quack, quack,\n
He led the others with his quack, quack, quack.\n
\n
Six little ducks that I once knew,\n
Fat ones, skinny ones, fair ones too.\n
But the one little duck with the feather on his back,\n
He led the others with his quack, quack, quack.\n
\n
Quack, quack, quack,\n
He led the others with his quack, quack, quack.\n
''',
//apples and Bannanas
  'Apples and bananas': '''
I like to eat, eat, eat apples and bananas.\n
I like to eat, eat, eat apples and bananas.\n
\n
I like to ate, ate, ate ay-ples and ba-nay-nays.\n
I like to ate, ate, ate ay-ples and ba-nay-nays.\n
\n
I like to eat, eat, eat ee-ples and ba-ne-nees.\n
I like to eat, eat, eat ee-ples and ba-ne-nees.\n
\n
I like to ite, ite, ite i-ples and bi-ni-nis.\n
I like to ite, ite, ite i-ples and bi-ni-nis.\n
\n
I like to oat, oat, oat oh-ples and bo-no-nos.\n
I like to oat, oat, oat oh-ples and bo-no-nos.\n
\n
I like to oot, oot, oot oo-ples and boo-noo-noos.\n
I like to oot, oot, oot oo-ples and boo-noo-noos.\n
\n
I like to eat, eat, eat apples and bananas.\n
I like to eat, eat, eat apples and bananas.\n
''',
// down by the station

  'Down by the station': '''
Down by the station early in the morning,\n
See the little pufferbellies all in a row.\n
See the engine driver pull the little handle,\n
Chug, chug, toot, toot, off we go!\n
\n
Down by the station early in the morning,\n
See the shiny track, curving away.\n
Here is the station, here is the train,\n
Woo-woo! Off we go on the railway!\n
\n
Down by the station early in the morning,\n
See the little pufferbellies all in a row.\n
See the engine driver pull the little handle,\n
Chug, chug, toot, toot, off we go!\n
\n
Down by the station early in the morning,\n
See the shiny track, curving away.\n
Here is the station, here is the train,\n
Woo-woo! Off we go on the railway!\n
\n
Down by the station early in the morning,\n
See the little pufferbellies all in a row.\n
See the engine driver pull the little handle,\n
Chug, chug, toot, toot, off we go!\n
\n
Down by the station early in the morning,\n
See the shiny track, curving away.\n
Here is the station, here is the tranin,\n
Woo-woo! Off we go on the railway!\n
''',
  '': ""
};
