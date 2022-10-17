import 'package:facebook_interface/componentes/botoes_postagem.dart';
import 'package:facebook_interface/modelos/modelos.dart';
import 'package:facebook_interface/uteis/paleta_cores.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class EstatisticaPostagem extends StatelessWidget {
  final Postagem postagem;

  const EstatisticaPostagem({required this.postagem, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: PaletaCores.azulFacebook,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                "${postagem.curtidas}",
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
            ),
            Text(
              "${postagem.comentarios} comentários",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
            SizedBox(width: 8),
            Text(
              "${postagem.compartilhamentos} compartilhamentos",
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
        Divider(
          thickness: 1.2,
        ),
        Row(
          children: [
            BotoesPostagem(
              icone: Icon(
                LineIcons.thumbsUpAlt,
                color: Colors.grey[700],
              ),
              texto: "Curtir",
              onTap: () {},
            ),
            BotoesPostagem(
              icone: Icon(
                LineIcons.alternateCommentAlt,
                color: Colors.grey[700],
              ),
              texto: "Comentar",
              onTap: () {},
            ),
            BotoesPostagem(
              icone: Icon(
                LineIcons.share,
                color: Colors.grey[700],
              ),
              texto: "Compartilhar",
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
