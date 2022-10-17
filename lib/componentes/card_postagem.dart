import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/componentes/cabecalho_postagem.dart';
import 'package:facebook_interface/componentes/estatistica_postagem.dart';
import 'package:facebook_interface/modelos/modelos.dart';
import 'package:flutter/material.dart';

class CardPostagem extends StatelessWidget {
  final Postagem postagem;

  const CardPostagem({
    Key? key,
    required this.postagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            //cabeçalho
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CabecalhoPostagem(postagem: postagem),
                  Text(postagem.descricao),
                ],
              ),
            ),
            //Imagem postagem
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: CachedNetworkImage(imageUrl: postagem.urlImagem),
            ),
            //Área de Postagem => (EstatisticaPostagem.dart)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: EstatisticaPostagem(postagem: postagem),
            )
          ],
        ));
  }
}
