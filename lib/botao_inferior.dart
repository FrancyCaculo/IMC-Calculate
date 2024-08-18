import 'package:flutter/material.dart';
import 'constantes.dart';


class BotaoInferior extends StatelessWidget {
  BotaoInferior({required this.aoPressionar, required this.tituloBotao});
  final aoPressionar;
  final String tituloBotao;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
        child: Center(
          child: Text(
            tituloBotao,
            style: botaoGrandeTextStyle,
          ),
        ),
        color: corContainerInferior,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
      ),
    );
  }
}