import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_interface/componentes/area_criar_postagem.dart';
import 'package:facebook_interface/componentes/area_story.dart';
import 'package:facebook_interface/componentes/botao_circulo.dart';
import 'package:facebook_interface/componentes/card_postagem.dart';
import 'package:facebook_interface/componentes/lista_contatos.dart';
import 'package:facebook_interface/dados/dados.dart';
import 'package:facebook_interface/modelos/modelos.dart';
import 'package:facebook_interface/uteis/paleta_cores.dart';
import 'package:facebook_interface/uteis/responsivo.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsivo(
        mobile: HomeMoblile(),
        desktop: HomeDesktop(),
      ),
    );
  }
}

class HomeMoblile extends StatelessWidget {
  const HomeMoblile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: AreaCriarPostagem(usuario: usuarioAtual),
        ),

        //Área de Story
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
          sliver: SliverToBoxAdapter(
            child: AreaStory(
              usuario: usuarioAtual,
              story: storys,
            ),
          ),
        ),

        //Postagem
        SliverList(
          delegate: SliverChildBuilderDelegate((context, indece) {
            Postagem postagem = postagens[indece];
            return CardPostagem(
              postagem: postagem,
            );
          }, childCount: postagens.length),
        ),
      ],
    );
  }
}

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Container(),
        ),
        Spacer(),
        Flexible(
          flex: 5,
          child: CustomScrollView(
            slivers: [
              //Área de Story
              SliverPadding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                sliver: SliverToBoxAdapter(
                  child: AreaStory(
                    usuario: usuarioAtual,
                    story: storys,
                  ),
                ),
              ),

              //Área de Postagem
              SliverToBoxAdapter(
                child: AreaCriarPostagem(usuario: usuarioAtual),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, indece) {
                  Postagem postagem = postagens[indece];
                  return CardPostagem(
                    postagem: postagem,
                  );
                }, childCount: postagens.length),
              ),
            ],
          ),
        ),
        Spacer(),
        Flexible(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: ListaContatos(usuarios: usuariosOnline),
          ),
        ),
      ],
    );
  }
}
