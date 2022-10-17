import 'package:facebook_interface/componentes/navegacao_abas.dart';
import 'package:facebook_interface/dados/dados.dart';
import 'package:facebook_interface/modelos/modelos.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../uteis/paleta_cores.dart';
import 'botao_circulo.dart';
import 'botao_imagem_perfil.dart';

class NavegacaoAbasDesktop extends StatelessWidget {
  final Usuario usuario;
  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;

  const NavegacaoAbasDesktop({
    Key? key,
    required this.usuario,
    required this.icones,
    required this.indiceAbaSelecionada,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4,
          )
        ],
      ),
      child: Row(
        children: [
          //Name Facebook no canto superior direito
          Expanded(
            child: Container(
              child: Text(
                "Facebook",
                style: TextStyle(
                    color: PaletaCores.azulFacebook,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    letterSpacing: -1.2),
              ),
            ),
          ),

          //Barra com icones de Navegação
          Expanded(
            child: Container(
              child: NavegacaoAbas(
                icones: icones,
                indiceAbaSelecionada: indiceAbaSelecionada,
                onTap: onTap,
              ),
            ),
          ),

          //Foto e nome do usuário atual, botões de pesquisar e menssage
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BotaoImagemPerfil(
                  usuario: usuarioAtual,
                  onTap: () {},
                ),
                BotaoCirlulo(
                  icone: Icons.search,
                  iconTamanho: 30,
                  onPressed: () {},
                ),
                BotaoCirlulo(
                  icone: LineIcons.facebookMessenger,
                  iconTamanho: 30,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
