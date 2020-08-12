import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
      ),
    );
  }

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(child: Text("Xylophone")),
            backgroundColor: Colors.teal.shade800),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.blue, soundNumber: 5),
              buildKey(color: Colors.indigo, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7)
            ],
          ),
        ),
      ),
    );
  }
}

//using english_words
//import 'package:english_words/english_words.dart';
//child: Center(child: Text(nouns.first)),

//here again we see that expanded widget and all within is being repeated 7 times so we can create another
//function called buildkey which will return us 7 different buttons that do the
//same thing
//before code
//Expanded(
//                child: FlatButton(
//                  color: Colors.red,
//                  onPressed: () {
//                    playSound(1);
//                  },
//                ),
//              ),
//
//              //So initially we wrote the two lines within onpressed for all the flatbuttons but instead we can use
//              //a funtion playSound() that takes in a soundNumber and plays that corresponding sound according to button
//              //pressed. in this way we can reduce the lines of code
//
//              Expanded(
//                child: FlatButton(
//                  color: Colors.orange,
//                  onPressed: () {
//                    playSound(2);
//                  },
//                ),
//              ),
//              Expanded(
//                child: FlatButton(
//                  color: Colors.yellow,
//                  onPressed: () {
//                    playSound(3);
//                  },
//                ),
//              ),
//
//              Expanded(
//                child: FlatButton(
//                  color: Colors.green,
//                  onPressed: () {
//                    playSound(4);
//                  },
//                ),
//              ),
//
//              Expanded(
//                child: FlatButton(
//                  color: Colors.blue,
//                  onPressed: () {
//                    playSound(5);
//                  },
//                ),
//              ),
//
//              Expanded(
//                child: FlatButton(
//                  color: Colors.indigo,
//                  onPressed: () {
//                    playSound(6);
//                  },
//                ),
//              ),
//
//              Expanded(
//                child: FlatButton(
//                  color: Colors.purple,
//                  onPressed: () {
//                    playSound(7);
//                  },
//                ),
//              ),
