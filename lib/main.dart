import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Xylophone(),
    theme: ThemeData(
      useMaterial3: true,
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Expanded(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  playSound(1);
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.black,
                          width: 5,
                        ),
                      )),
                  width: size.width,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  playSound(2);
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.orange,
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.black,
                          width: 5,
                        ),
                      )),
                  width: size.width,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  playSound(3);
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.yellow,
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.black,
                          width: 5,
                        ),
                      )),
                  width: size.width,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  playSound(4);
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.green,
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.black,
                          width: 5,
                        ),
                      )),
                  width: size.width,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  playSound(5);
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.black,
                          width: 5,
                        ),
                      )),
                  width: size.width,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  playSound(6);
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.black,
                          width: 5,
                        ),
                      )),
                  width: size.width,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  playSound(7);
                },
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.deepPurple,
                      border: Border.symmetric(
                        horizontal: BorderSide(
                          color: Colors.black,
                          width: 5,
                        ),
                      )),
                  width: size.width,
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }

  void playSound(int soundNumber) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$soundNumber.wav'));
  }
}
