import 'package:facebook_interface/componentes/imagem_perfil.dart';
import 'package:facebook_interface/modelos/modelos.dart';
import 'package:flutter/material.dart';

class CabecalhoPostagem extends StatelessWidget {
  final Postagem postagem;

  const CabecalhoPostagem({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImagemPerfil(
          urlImagem: postagem.usuario.urlImagem,
          foiVisualizado: true,
        ),
        SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                postagem.usuario.nome,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text("${postagem.tempoAtras} - "),
                  Icon(
                    Icons.public,
                    size: 12,
                    color: Colors.grey[600],
                  ),
                ],
              )
            ],
          ),
        ),

        //informações do usuário
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
          ),
        )
      ],
    );
  }
}
