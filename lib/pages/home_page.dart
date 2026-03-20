import 'package:dev_mobile_flutter/components/emoji_circle.dart';
import 'package:dev_mobile_flutter/pages/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void fazerEscolha(String escolha) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondPage(escolha: escolha),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pedra,Papel, Tesoura"),
        backgroundColor: Color(0xFFFF1F1F),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Column(
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
                GestureDetector(
                  onTap: () {
                    fazerEscolha('👊');
                  },
                  child: const EmojiCircle(emoji: '👊', buttonSize: 100),
                ),
                GestureDetector(
                  onTap: () {
                    fazerEscolha('🖐️');
                  },
                  child: const EmojiCircle(emoji: '🖐️', buttonSize: 100),
                ),
                GestureDetector(
                  onTap: () {
                    fazerEscolha('✌️');
                  },
                  child: const EmojiCircle(emoji: '✌️', buttonSize: 100),
                ),
              ],
            ),
            const SizedBox(height: 140),
          ],
        ),
      ),
    );
  }
}
