import 'package:facebook_interface/componentes/card_story.dart';
import 'package:facebook_interface/dados/dados.dart';
import 'package:facebook_interface/modelos/modelos.dart';
import 'package:flutter/material.dart';

class AreaStory extends StatelessWidget {
  final Usuario usuario;
  final List<Story> story;
  
  const AreaStory({
    Key? key,
    required this.usuario,
    required this.story,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + story.length,
        itemBuilder: (context, indice) {
          if (indice == 0) {
            Story storyUsuario = Story(
              usuario: usuarioAtual,
              urlImagem: usuarioAtual.urlImagem,
              foiVisualizado: true,
            );
            return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: CardStory(
                  adicionarStory: true,
                  story: storyUsuario,
                ));
          }

          Story story = storys[indice - 1];
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: CardStory(
                story: story,
              ));
        },
      ),
    );
  }
}
