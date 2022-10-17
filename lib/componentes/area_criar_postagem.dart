import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/componentes/botao_postagem.dart';
import 'package:facebook_interface/modelos/usuario.dart';
import 'package:flutter/material.dart';

class AreaCriarPostagem extends StatelessWidget {
  final Usuario usuario;

  const AreaCriarPostagem({Key? key, required this.usuario}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey[200],
                backgroundImage: CachedNetworkImageProvider(usuario.urlImagem),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: "No que você está pensando?"),
                ),
              ),
            ],
          ),
          Divider(
            height: 10,
            thickness: 0.5,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BotaoPostagem(
                  icone: (Icons.videocam),
                  onPressed: () {},
                  label: "Ao vivo",
                ),
                VerticalDivider(
                  width: 8,
                ),
                BotaoPostagem(
                  icone: (Icons.photo_library),
                  onPressed: () {},
                  label: "Foto",
                ),
                VerticalDivider(
                  width: 8,
                ),
                BotaoPostagem(
                  icone: (Icons.video_call),
                  onPressed: () {},
                  label: "Sala",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
