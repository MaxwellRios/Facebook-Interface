import 'package:facebook_interface/uteis/paleta_cores.dart';
import 'package:flutter/material.dart';

class NavegacaoAbas extends StatelessWidget {
  final List<IconData> icones;
  final int indiceAbaSelecionada;
  final Function(int) onTap;
  final bool indicadorEmBaixo;

  const NavegacaoAbas({
    Key? key,
    required this.icones,
    required this.indiceAbaSelecionada,
    required this.onTap,
    this.indicadorEmBaixo = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicator: BoxDecoration(
        border: indicadorEmBaixo
            ? Border(
                top: BorderSide(
                  color: PaletaCores.azulFacebook,
                  width: 3,
                ),
              )
            : Border(
                bottom: BorderSide(
                  color: PaletaCores.azulFacebook,
                  width: 3,
                ),
              ),
      ),
      onTap: onTap,
      tabs: icones
          .asMap()
          .map((indice, icone) {
            return MapEntry(
              indice,
              Tab(
                icon: Icon(
                  icone,
                  color: indiceAbaSelecionada == indice
                      ? PaletaCores.azulFacebook
                      : Colors.black54,
                  size: 30,
                ),
              ),
            );
          })
          .values
          .toList(),
    );
  }
}
