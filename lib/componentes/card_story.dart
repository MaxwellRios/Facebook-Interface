import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/componentes/imagem_perfil.dart';
import 'package:facebook_interface/modelos/modelos.dart';
import 'package:facebook_interface/uteis/paleta_cores.dart';
import 'package:flutter/material.dart';

class CardStory extends StatelessWidget {
  final Story story;
  final bool adicionarStory;

  const CardStory({Key? key, required this.story, this.adicionarStory = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: story.urlImagem,
            height: double.infinity,
            width: 110,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
            gradient: PaletaCores.degradeStory,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: adicionarStory
              ? Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    iconSize: 30,
                    color: PaletaCores.azulFacebook,
                  ),
                )
              : ImagemPerfil(
                  urlImagem: story.usuario.urlImagem,
                  foiVisualizado: story.foiVisualizado,
                ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          right: 8,
          child: Text(
            adicionarStory ? "Criar Story" : story.usuario.nome,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
