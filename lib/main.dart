import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Xmas Song',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  //final String title;

  _MyHomePage();
  //final List<String> items = <String>["In the Begining", "Happy Ending", "Live Happy here after", "Love is the Origin", "Beauty and the Beast","In the Begining", "Happy Ending", "Live Happy here after", "Love is the Origin", "Beauty and the Beast"];
  final List<IconData> IconString = [
    Icons.add_a_photo,
    Icons.add_shopping_cart,
    Icons.add_photo_alternate,
    Icons.subtitles,
    Icons.supervised_user_circle
  ];

  List<Map<String, dynamic>> items = [
    {"id": 1, "songtitle": "Gingle Bell", "url": "http://google.com"},
    {"id": 2, "songtitle": "Joy to the world", "url": "http://google.com"},
    {"id": 3, "songtitle": "Days of chrismax", "url": "http://google.com"},
    {"id": 4, "songtitle": "saviour has been born", "url": "http://google.com"},
    {"id": 5, "songtitle": "Gingle Bell", "url": "http://google.com"},
    {"id": 6, "songtitle": "Gingle Bell", "url": "http://google.com"},
    {"id": 7, "songtitle": "Gingle Bell", "url": "http://google.com"},
    {"id": 8, "songtitle": "Gingle Bell", "url": "http://google.com"},
    {"id": 9, "songtitle": "Gingle Bell", "url": "http://google.com"},
    {"id": 10, "songtitle": "Gingle Bell", "url": "http://google.com"},
    {"id": 11, "songtitle": "Gingle Bell", "url": "http://google.com"},
    {"id": 12, "songtitle": "Gingle Bell", "url": "http://google.com"},
    {"id": 13, "songtitle": "Gingle Bell", "url": "http://google.com"}
  ];
  List<String> imagesList = ["1.gif", "2.jpg", "3.gif", "4.jpg"];
  int i = 0;
  AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
  int x = 1;
  play(index, context) async {
    // print('result');

    try {
      //   // int result =
      //   //     await audioPlayer.play("assets/Audio/Perfect.mp3", isLocal: true);
      //   if (x == 1) {
      //     _assetsAudioPlayer.open(Audio(
      //       "assets/Audio/Perfect.mp3",
      //     ));
      //     x++;
      //   }

      //   if (x == 2) {
      //     // AssetsAudioPlayer _assetsAudioPlayer = AssetsAudioPlayer();
      //     _assetsAudioPlayer.stop();
      //     x = 1;
      //   }

      //print(result);
      var rng = new Random();
      setState(() {
        i = rng.nextInt(3);
      });
      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("${items[index]["songtitle"]} now playing"),
      ));
    } catch (t) {
      //mp3 unreachable
      print(t);
    }
  }

  initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text("Xmas Song"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.6),
        ),
        child: Column(children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                      width: double.infinity,
                      height: 125,
                      decoration: BoxDecoration(
                        // color : Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          image:
                              ExactAssetImage("assets/images/${imagesList[i]}"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.6), BlendMode.dstATop),
                        ),
                      ),
                      child: Column(
                          // padding : EdgeInsets.all(5),
                          children: <Widget>[
                            Expanded(
                              child: Row(children: <Widget>[
                                Expanded(
                                  child: Text(''),
                                  // /cloud_download_outlined
                                  // /download_done_rounded
                                  //download_outlined
                                ),
                                Expanded(
                                  child: Text(
                                    'Jingle Bell',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  // /cloud_download_outlined
                                  // /download_done_rounded
                                  //download_outlined
                                ),

                                Padding(
                                  padding: EdgeInsets.only(
                                    right: 5,
                                  ),
                                  child: Container(
                                    height: 15,
                                    // width : double.infinity,
                                    color: Colors.red.withOpacity(0.6),
                                    padding: EdgeInsets.only(right: 5, left: 3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          Text(
                                            'Download Lyrics',
                                            style: TextStyle(
                                              fontSize: 8,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Icon(
                                            Icons.file_download,
                                            size: 10,
                                            color: Colors.white,
                                          ),
                                        ]),
                                  ),
                                )

                                // /cloud_download_outlined
                                // /download_done_rounded
                                //download_outlined

                                // Expanded(),
                                // Expanded()
                              ]),
                            ),
                            Expanded(child: Text('hi')),
                            Expanded(
                              child: Text(
                                'Jingle Bell',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ])),
                ),
                //middle Widget
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 15,
                          // width : double.infinity,
                          color: Colors.red.withOpacity(0.6),
                          padding: EdgeInsets.only(right: 5, left: 3),
                          child: Row(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  '200 music, play all',
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.play_arrow,
                                  size: 10,
                                  color: Colors.white,
                                ),
                              ]),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 15,
                          // width : double.infinity,
                          color: Colors.red.withOpacity(0.6),
                          padding: EdgeInsets.only(right: 5, left: 3),
                          child: Row(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  '20 favourite music, play all',
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.play_arrow,
                                  size: 10,
                                  color: Colors.white,
                                ),
                              ]),
                        ),
                        SizedBox(width: 5),
                        Container(
                          height: 15,
                          // width : double.infinity,
                          color: Colors.red.withOpacity(0.6),
                          padding: EdgeInsets.only(right: 5, left: 3),
                          child: Row(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  '20 popular music, play all',
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.play_arrow,
                                  size: 10,
                                  color: Colors.white,
                                ),
                              ]),
                        )
                      ]),
                ),
              ]),
            ),
          ),
          Expanded(
              flex: 10,
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity, //MediaQuery.of(context).size,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: Column(children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        width: double.infinity,
                        height: 300, // double.infinity,
                        decoration: BoxDecoration(
                          // color : Colors.blue,
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Scrollbar(
                              child: ListView.builder(
                                  itemCount: items.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return items.length < 1
                                        ? Text(
                                            "No Music Found",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          )
                                        : Padding(
                                            padding: EdgeInsets.all(3),
                                            child: Container(
                                                //height : 40,
                                                decoration: BoxDecoration(
                                                    color: Colors.white
                                                        .withOpacity(0.3)),
                                                child: ListTile(
                                                  leading: InkWell(
                                                      child: Icon(
                                                        Icons.favorite,
                                                        size: 20,
                                                      ),
                                                      onTap: () {
                                                        Scaffold.of(context)
                                                            .showSnackBar(
                                                                SnackBar(
                                                          content: Text(
                                                              "${items[index]["songtitle"]} add to favourite"),
                                                        ));
                                                      }),
                                                  title: Text(items[index]
                                                      ["songtitle"]),
                                                  trailing: InkWell(
                                                      child: Icon(
                                                        Icons.play_arrow,
                                                        size: 30,
                                                      ),
                                                      onTap: () {
                                                        play(index, context);
                                                      }),
                                                )),
                                          );
                                  })),
                        ),
                      ),
                      Container(
                        height: 80,
                        child: Scrollbar(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: IconString.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.all(4),
                                child: Container(
                                  width: 80,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white.withOpacity(0.3),
                                  ),
                                  child: Icon(
                                    IconString[index],
                                    size: 50,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(2),
                          child: Divider(
                            color: Colors.white,
                            //width : double.infinity,
                            thickness: 1,
                          ))
                    ]),
                  )))
        ]),
      ),
    );
  }
}
