import 'package:flutter/material.dart';

class BotaoPostagem extends StatelessWidget {
  IconData icone;
  Function onPressed;
  String label;

  BotaoPostagem({
    required this.icone,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        icone,
      ),
      label: Text(
        label,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
