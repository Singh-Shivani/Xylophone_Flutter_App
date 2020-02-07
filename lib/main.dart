import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Xylophone(),
        ),
      ),
    );

class Xylophone extends StatelessWidget {
  void play(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          play(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            buildKey(color: Color.fromRGBO(41, 240, 220, 1), soundNumber: 1),
            buildKey(color: Color.fromRGBO(164, 237, 229, 1), soundNumber: 2),
            buildKey(color: Color.fromRGBO(203, 245, 241, 1), soundNumber: 3),
            buildKey(color: Color.fromRGBO(171, 200, 245, 1), soundNumber: 4),
            buildKey(color: Color.fromRGBO(204, 168, 233, 1), soundNumber: 5),
            buildKey(color: Color.fromRGBO(169, 122, 207, 1), soundNumber: 6),
            buildKey(color: Color.fromRGBO(116, 77, 148, 1), soundNumber: 7),
          ],
        ),
      ),
    );
  }
}
