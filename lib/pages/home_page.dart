import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  const ChoiceButton({super.key, required this.emoji, required this.buttonSize});

  final String emoji;
  final double buttonSize;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: buttonSize,
        height: buttonSize,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade200,
        border: Border.all(color: Colors.black12, width: 2),
        
      ),
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            emoji,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: buttonSize),
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChoiceButton(emoji: '👊', buttonSize: 100),
            SizedBox(width: 16),
            ChoiceButton(emoji: '🖐️', buttonSize: 100),
            SizedBox(width: 16),
            ChoiceButton(emoji: '✌️', buttonSize: 100),
          ],
        ),
      ),
    );
  }
}