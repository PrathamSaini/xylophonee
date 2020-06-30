import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp((MaterialApp(
home: Home(),
)));
class Home extends StatelessWidget {
  void play(int n) {
    final player=AudioCache();
    player.play('note$n.mp3');
  }
  Expanded buildkey({Color color, int n}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          play(n);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red,n:1),
              buildkey(color: Colors.green,n:2),
              buildkey(color: Colors.blue,n:3),
              buildkey(color: Colors.yellow,n:4),
              buildkey(color: Colors.purple,n:5),
              buildkey(color: Colors.pink,n:6),
              buildkey(color: Colors.orange,n:7),
            ],
          )
      ),
    );
  }
}
