import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'conteudo_icone.dart';
import 'cartao_padrao.dart';
import 'constantes.dart';
import 'tela_resultado.dart';
import 'botao_inferior.dart';
import 'botao_arredondado.dart';
import 'calculadora_imc.dart';

enum Sexo {
  masculino,
  feminino,
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  Color corMascCardPadrao = corInativaPadrao;
  Color corFemCardPadrao = corInativaPadrao;

  Sexo? sexoSelecionado;
  int altura = 160;
  int peso = 50;
  int idade = 16;

  //Função Ativar Sexo: Usando enum
  /* void atualizarCor(Sexo sexoSelecionado) {
    if (sexoSelecionado == Sexo.masculino) {
      if (corMascCardPadrao == corInativaPadrao) {
        corMascCardPadrao = corAtivaCartaoPadrao;
        corFemCardPadrao = corInativaPadrao;
      } else {
        corMascCardPadrao = corInativaPadrao;
      }
    }

    if (sexoSelecionado == Sexo.feminino) {
      if (corFemCardPadrao == corInativaPadrao) {
        corFemCardPadrao = corAtivaCartaoPadrao;
        corMascCardPadrao = corInativaPadrao;
      } else {
        corFemCardPadrao = corInativaPadrao;
      }
    }
  }
  */

  //Função Ativar e Desativar Card
  /* void atualizarCor(int sexo) {
    //Cartao Masc Pressionado
    if (sexo == 1) {
      if (corMascCardPadrao == corInativaPadrao) {
        corMascCardPadrao = corAtivaCartaoPadrao;
        corFemCardPadrao = corInativaPadrao;
      } else {
        corMascCardPadrao = corInativaPadrao;
      }
    }

    //Cartao Fem Pressionado
    if (sexo == 2) {
      if (corFemCardPadrao == corInativaPadrao) {
        corFemCardPadrao = corAtivaCartaoPadrao;
        corMascCardPadrao = corInativaPadrao;
      } else {
        corFemCardPadrao = corInativaPadrao;
      }
    }
  }
  */

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      sexoSelecionado = (Sexo.masculino);
                    });
                  },
                  child: CartaoPadrao(
                    cor: sexoSelecionado == Sexo.masculino
                        ? corAtivaCartaoPadrao
                        : corInativaPadrao,
                    FilhoCartao: const ConteudoIcone(
                      icone: FontAwesomeIcons.mars,
                      descricaco: 'MASCULINO',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      sexoSelecionado = (Sexo.feminino);
                    });
                  },
                  child: CartaoPadrao(
                      cor: sexoSelecionado == Sexo.feminino
                          ? corAtivaCartaoPadrao
                          : corInativaPadrao,
                      FilhoCartao: const ConteudoIcone(
                        icone: FontAwesomeIcons.venus,
                        descricaco: "FEMININO",
                      )),
                ),
              ),
            ],
          )),
          Expanded(
            child: CartaoPadrao(
              cor: corAtivaCartaoPadrao,
              FilhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'ALTURA',
                    style: descricaoTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('$altura', style: descText),
                      Text('cm'),
                    ],
                  ),
                  Slider(
                      activeColor: Color(0xFFFF5822),
                      inactiveColor: Color(0xFF8D8E98),
                      value: altura.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double novoValor) {
                        setState(() {
                          altura = novoValor.round();
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    cor: corAtivaCartaoPadrao,
                    FilhoCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Peso',
                          style: descricaoTextStyle,
                        ),
                        Text(
                          peso.toString(),
                          style: descText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BotaoArredondado(
                              pressionar: () {
                                setState(() {
                                  peso++;
                                });
                              },
                              icone: FontAwesomeIcons.plus,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            BotaoArredondado(
                              pressionar: () {
                                setState(() {
                                  peso--;
                                });
                              },
                              icone: FontAwesomeIcons.minus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    cor: corAtivaCartaoPadrao,
                    FilhoCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'IDADE',
                          style: descricaoTextStyle,
                        ),
                        Text(
                          idade.toString(),
                          style: descText,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BotaoArredondado(
                                icone: FontAwesomeIcons.plus,
                                pressionar: () {
                                  setState(() {
                                    idade++;
                                  });
                                }),
                            SizedBox(
                              width: 10.0,
                            ),
                            BotaoArredondado(
                                icone: FontAwesomeIcons.minus,
                                pressionar: () {
                                  setState(() {
                                    idade--;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BotaoInferior(
            aoPressionar: () {
              CalculadoraIMC calc = CalculadoraIMC(altura, peso);

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TelaResultado(
                    resultadoIMC: calc.obterIMC(),
                    resultadoTexto: calc.obterResultado(),
                    interPretacao: calc.interpretacao(),
                  )));
            },
            tituloBotao: 'CALCULAR',
          ),
        ],
      ),
    );
  }
}
