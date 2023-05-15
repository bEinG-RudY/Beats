import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:assignment2/Pages/Music.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Music music = new Music();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        colors: [
          const Color(0xFFa020f0).withOpacity(0.2),
          const Color(0xFF303151).withOpacity(0.4),
          const Color(0xFF303151).withOpacity(.6),
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 22,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: const Color(0xFF31314F).withOpacity(0.8),
                              borderRadius: BorderRadius.circular(8)),
                          child: const Icon(
                            Icons.sort_rounded,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 20),
                        child: Container(
                          height: 60,
                          width: 400,
                          decoration: BoxDecoration(
                              color: const Color(0xFF31314F).withOpacity(0.8),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            children: [
                              Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  height: 50,
                                  width: 50,
                                  child: Icon(
                                    CupertinoIcons.search,
                                    color: Colors.white.withOpacity(0.5),
                                    size: 30,
                                  )),
                              Container(
                                // margin: EdgeInsets.symmetric(horizontal: 15),
                                height: 50,
                                width: 300,
                                child: TextFormField(
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.9)),
                                  cursorColor: Colors.white.withOpacity(0.1),
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Search",
                                      hintStyle: TextStyle(
                                          color:
                                              Colors.white.withOpacity(0.5))),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Trending Right Now",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.9),
                        letterSpacing: 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 20),
                  child: Container(
                    height: 240,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: music.MusicList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: Container(
                              width: 340,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        '${music.MusicList[index]["image"]}'),
                                    fit: BoxFit.fill,
                                  ),
                                  color:
                                      const Color(0xFF31314F).withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                          );
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.transparent,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xFFa020f0)
                                        .withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                    child: Text("Trending right now",
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.9),
                                            fontSize: 14)),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                    child: Text("Rock",
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.6),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                    child: Text("Hip Hop",
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.6),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 28.0),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Center(
                                    child: Text("Electro",
                                        style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.6),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                )),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 380,
                  width: double.infinity,
                  color: Colors.transparent,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: music.MusicList.length,
                      itemBuilder: (context, index) {
                        return PlayMusic(
                            name: music.MusicList[index]["name"],
                            artist: music.MusicList[index]["artistname"],
                            image: music.MusicList[index]["image"],
                            i: index,
                          file: music.MusicList[index]["file"]
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 66,
                    child: Icon(
                      Icons.home_outlined,
                      size: 30,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  SizedBox(
                    height: 46,
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => const Music()));
                      },
                      child: Icon(
                        CupertinoIcons.search,
                        size: 30,
                        color: Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 46,
                    child: Icon(
                      CupertinoIcons.music_note_2,
                      size: 30,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 46,
                    child: Icon(
                      Icons.person_outline_rounded,
                      size: 30,
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}

Widget PlayMusic({name, artist, image, i,file}) {
  bool isPlaying = true;
  AudioPlayer? _player;



  void play(int a) {
    _player?.dispose();
    final player = _player = AudioPlayer();
    player.play(AssetSource('$file'));

      isPlaying = false;
  }

  void pause(int a) {
    _player?.dispose();
    final player = _player = AudioPlayer();
    player.pause();

      isPlaying = true;

  }
  return Padding(
    padding: const EdgeInsets.only(right: 20.0),
    child: Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: ListTile(
        title: Text('''$name''',
            style: TextStyle(color: Colors.white, fontSize: 15)),
        subtitle: Text("$artist",
            style: TextStyle(color: Colors.white, fontSize: 10)),
        leading: CircleAvatar(
          backgroundImage: AssetImage('$image'),
        ),
        trailing: IconButton(
          onPressed: () {
            isPlaying == false ? pause(i) : play(i);
          },
          icon: Icon(
            isPlaying == false ? Icons.pause_rounded : Icons.play_arrow_rounded,
            color: Colors.white,
            size: 32,
          ),
        ),
      ),
    ),
  );
}
