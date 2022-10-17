import 'package:facebook_interface/componentes/navegacao_abas.dart';
import 'package:facebook_interface/componentes/navegacao_abas_desktop.dart';
import 'package:facebook_interface/dados/dados.dart';
import 'package:facebook_interface/telas/home.dart';
import 'package:facebook_interface/uteis/responsivo.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class Principal extends StatefulWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final List<Widget> _telas = [
    Home(),
    Scaffold(
      backgroundColor: Colors.green,
    ),
    Scaffold(
      backgroundColor: Colors.yellow,
    ),
    Scaffold(
      backgroundColor: Colors.purple,
    ),
    Scaffold(
      backgroundColor: Colors.grey,
    ),
    Scaffold(
      backgroundColor: Colors.orange,
    ),
  ];

  List<IconData> _icones = [
    Icons.home,
    Icons.ondemand_video,
    Icons.storefront_outlined,
    Icons.flag_outlined,
    LineIcons.bell,
    Icons.menu,
  ];

  int _indiceAbaSelecionada = 0;

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsivo.isDesktop(context);

    //captura largura da tela
    Size tamanho = MediaQuery.of(context).size;

    return DefaultTabController(
      length: _icones.length,
      child: Scaffold(
        appBar: isDesktop
            ? PreferredSize(
                child: NavegacaoAbasDesktop(
                  usuario: usuarioAtual,
                  icones: _icones,
                  indiceAbaSelecionada: _indiceAbaSelecionada,
                  onTap: (indice) {
                    setState(
                      () {
                        _indiceAbaSelecionada = indice;
                      },
                    );
                  },
                ),
                preferredSize: Size(tamanho.width, 100),
              )
            : null,
        body: TabBarView(children: _telas),
        bottomNavigationBar: isDesktop
            ? null
            : NavegacaoAbas(
                icones: _icones,
                indiceAbaSelecionada: _indiceAbaSelecionada,
                onTap: (indice) {
                  setState(() {
                    _indiceAbaSelecionada = indice;
                  });
                },
              ),
      ),
    );
  }
}
