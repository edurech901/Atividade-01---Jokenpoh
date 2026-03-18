import 'package:dev_mobile_flutter/components/emoji_circle.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
                EmojiCircle(emoji: '🖐️', buttonSize: 140),
                SizedBox(height: 16),
                Text(
                  "Escolha do App",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const EmojiCircle(emoji: '👊', buttonSize: 140),
            Column(
              children: [
                Image.asset('assets/vitoria.png', width: 170, height: 170),
                const SizedBox(height: 16),
                const Text(
                  "Você ganhou/perdeu/empatou",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: const Color(0xFFFF1F1F),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                  
                  child: const Text("Tentar Novamente", style: TextStyle(fontSize: 24),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}