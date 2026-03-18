import 'package:flutter/material.dart';

class EmojiCircle extends StatelessWidget {
  const EmojiCircle({
    super.key,
    required this.emoji,
    required this.buttonSize,
  });

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