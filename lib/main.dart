import 'package:flutter/material.dart';

import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});


  void playSound(int soundNumber){
    final player = AssetsAudioPlayer();
    player.open(
      Audio('assets/note$soundNumber.wav'),
    );
  }

  Expanded buildKey(Color color, int soundsNumber){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color
        ),
        onPressed: () {
        playSound(soundsNumber);                
      }, child: const Text(""), ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),

              
            ],
          ),
        ),
      ),
    );
  }
}