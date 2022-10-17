import 'package:flutter/material.dart';

class BotoesPostagem extends StatelessWidget {
  final Icon icone;
  final String texto;
  final VoidCallback onTap;

  const BotoesPostagem({
    Key? key,
    required this.icone,
    required this.texto,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Container(
            child: Row(children: [
              icone,
              SizedBox(
                width: 4,
              ),
              Text(
                texto,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
