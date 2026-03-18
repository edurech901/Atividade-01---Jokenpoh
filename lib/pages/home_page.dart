import 'package:dev_mobile_flutter/components/emoji_circle.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pedra,Papel, Tesoura"),
        backgroundColor: Color(0xFFFF1F1F),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                EmojiCircle(emoji: '', buttonSize: 140),
                SizedBox(height: 16),
                Text(
                  "Escolha do App",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                EmojiCircle(emoji: '👊', buttonSize: 100),
                EmojiCircle(emoji: '🖐️', buttonSize: 100),
                EmojiCircle(emoji: '✌️', buttonSize: 100),
              ],
            ),
            SizedBox(height: 140),
          ],
        ),
      ),
    );
  }
}
