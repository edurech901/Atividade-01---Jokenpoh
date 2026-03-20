import 'package:dev_mobile_flutter/components/emoji_circle.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.escolha});

  final String escolha;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int escolhaAleatoria = Random().nextInt(3);
  List<String> opcoes = ['👊', '🖐️', '✌️'];

  int definirResultado() {
    if (opcoes[escolhaAleatoria] == widget.escolha) {
      return 0;
    } else if ((widget.escolha == '👊' && opcoes[escolhaAleatoria] == '✌️') ||
        (widget.escolha == '🖐️' && opcoes[escolhaAleatoria] == '👊') ||
        (widget.escolha == '✌️' && opcoes[escolhaAleatoria] == '🖐️')) {
      return 1;
    } else {
      return -1;
    }
  }

  String mensagemResultado() {
    int resultado = definirResultado();
    if (resultado == 0) {
      return "Empate!";
    } else if (resultado == 1) {
      return "Você ganhou!";
    } else {
      return "Você perdeu!";
    }
  }

  Image assetParaResultado() {
    int resultado = definirResultado();
    if (resultado == 0) {
      return Image.asset('assets/empate.png', fit: BoxFit.cover, width: 170, height: 170);
    } else if (resultado == 1) {
      return Image.asset('assets/vitoria.png', fit: BoxFit.cover, width: 170, height: 170);
    } else {
      return Image.asset('assets/derrota.png', fit: BoxFit.cover, width: 170, height: 170);
    }
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
            Column(
              children: [
                EmojiCircle(emoji: opcoes[escolhaAleatoria], buttonSize: 140),
                const SizedBox(height: 16),
                const Text(
                  "Escolha do App",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            EmojiCircle(emoji: widget.escolha, buttonSize: 140),
            Column(
              children: [
                assetParaResultado(),
                const SizedBox(height: 16),
                Text(
                  mensagemResultado(),
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: const Color(0xFFFF1F1F),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),

                  child: const Text(
                    "Tentar Novamente",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
