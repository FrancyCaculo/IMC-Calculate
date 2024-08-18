import 'package:flutter/material.dart';



class BotaoArredondado extends StatelessWidget {
  BotaoArredondado({required this.icone, required this.pressionar});
  final IconData icone;
  final pressionar;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      // ignore: sort_child_properties_last
      child: Icon(
        icone,
        color: Colors.white,
      ),
      onPressed: pressionar,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF7e7e7e),
      constraints: const BoxConstraints.tightFor(
        width: 47.0,
        height: 47.0,
      ),
      elevation: 6,
    );
  }
}
