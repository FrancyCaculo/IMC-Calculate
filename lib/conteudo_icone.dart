import 'package:flutter/material.dart';
import 'constantes.dart';

//Conteudo Do Card
class ConteudoIcone extends StatelessWidget {
  const ConteudoIcone({super.key, required this.icone, this.descricaco});

  final IconData icone;
  final String? descricaco;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icone,
          color: Colors.white,
          size: 95.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          descricaco!,
          style: descricaoTextStyle,
        )
      ],
    );
  }
}