import 'package:flutter/material.dart';

// Card dos Cartões
class CartaoPadrao extends StatelessWidget {
  CartaoPadrao({required this.cor, this.FilhoCartao});

  final Color cor;
  final Widget? FilhoCartao;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: cor,
      ),
      margin: const EdgeInsets.all(20.0),
      child: FilhoCartao,
    );
  }
}