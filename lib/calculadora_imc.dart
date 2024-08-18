import 'dart:math';

class CalculadoraIMC {
  
  CalculadoraIMC(this.altura, this.peso) {
    _imc = peso / pow(altura / 100, 2);  // Calcular o IMC automaticamente
  }

  final int altura;
  final int peso;
  double _imc = 0;

  String obterIMC() {
    return _imc.toStringAsFixed(1);
  }

  String obterResultado() {
    if (_imc < 18.5) {
      return 'Abaixo do Peso';
    } else if (_imc >= 18.5 && _imc <= 24.99) {
      return 'Normal';
    } else {
      return 'Acima do Peso';
    }
  }

  String interpretacao() {
    if (_imc < 18.5) {
      return 'Você está com o peso abaixo do Normal. Tente comer um pouco mais.';
    } else if (_imc >= 18.5 && _imc <= 24.9) {
      return 'Parabéns! Seu peso está Normal';
    } else {
      return 'Você está com o peso Acima do Normal. Tente Exercício Físico.';
    }
  }
}
