import 'package:flutter/material.dart';
import 'package:share/share.dart';

class NewPage extends StatelessWidget {
  final Map<String, dynamic> fotoSelecionada;

  NewPage({this.fotoSelecionada});

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      body: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(fotoSelecionada['data']['qlt']['url']),
              fit: BoxFit.cover,
            ),
          ),
        ),
        onLongPress: () {
          Share.share(fotoSelecionada['data']['qlt']['url'],
              subject: 'Olha que xuxuzinho a imagem que selecionei para você!');
        },
      ),
    );
    return scaffold;
  }
}
