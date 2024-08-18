import 'package:calculadora_imc/botao_inferior.dart';
import 'package:calculadora_imc/cartao_padrao.dart';
import 'package:calculadora_imc/constantes.dart';
import 'package:flutter/material.dart';

class TelaResultado extends StatelessWidget {
  TelaResultado(
      {required this.resultadoIMC,
      required this.resultadoTexto,
      required this.interPretacao});


  final String resultadoIMC;
  final String resultadoTexto;
  final String interPretacao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 56, 56, 56),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 32, 31, 31),
                offset: Offset(0, 3.0),
                blurRadius: 4.0,
              )
            ]),
            child: AppBar(
              backgroundColor: const Color.fromARGB(255, 56, 56, 56),
              elevation: 0.0,
              title: const Text(
                "CALCULADORA IMC",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
            ),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: (Container(
              padding: EdgeInsets.all(17.0),
              child: Center(
                child: Text(
                  'Resultado',
                  style: tituloTextStyle,
                ),
              ),
            )),
          ),
          Expanded(
            flex: 5,
            child: CartaoPadrao(
                cor: corAtivaCartaoPadrao,
                FilhoCartao: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultadoTexto.toUpperCase(),
                      style: resultadoTextStyle,
                    ),
                    Text(
                      resultadoIMC,
                      style: IMCTextStyle,
                    ),
                    Text(
                      interPretacao,
                      textAlign: TextAlign.center,
                      style: corpoTextStyle,
                    )
                  ],
                )),
          ),
          BotaoInferior(
              aoPressionar: () {
                Navigator.pop(context);
              },
              tituloBotao: 'RECALCULAR')
        ],
      ),
    );
  }
}
