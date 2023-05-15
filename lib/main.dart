import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 74, 210, 90),
      appBar: AppBar(
        title: const Text("Random It"),
        backgroundColor: const Color.fromARGB(255, 23, 140, 15),
      ),
      body: const RandomIt(),
    ),
  ));
}

class RandomIt extends StatefulWidget {
  const RandomIt({super.key});

  @override
  State<RandomIt> createState() => _RandomItState();
}

class _RandomItState extends State<RandomIt> {
  int leftphoto = 2;
  int rightphoto = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Text(
          leftphoto == rightphoto ? "YAAAY YOU WIN!!!" : "Sorry , Try Again",
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftphoto = Random().nextInt(8) + 1;
                        rightphoto = Random().nextInt(8) + 1;
                      });
                    },
                    child: Image.asset("images/image-$leftphoto.png")),
              ),
              Expanded(
                child: TextButton(
                     onPressed: () {
                      setState(() {
                        leftphoto = Random().nextInt(8) + 1;
                        rightphoto = Random().nextInt(8) + 1;
                      });
                    },
                    child: Image.asset("images/image-$rightphoto.png")),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
