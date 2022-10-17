import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class BotaoCirlulo extends StatelessWidget {
  final IconData icone;
  final double iconTamanho;
  final VoidCallback onPressed;

  const BotaoCirlulo({
    Key? key,
    required this.icone,
    required this.iconTamanho,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      margin: EdgeInsets.all(6),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icone),
        iconSize: iconTamanho,
        color: Colors.black,
      ),
    );
  }
}
