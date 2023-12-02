import 'package:flutter/widgets.dart';

class Controller {
  //entrada de dados
  final input = TextEditingController(text: '0');

  //variavel de resultado da soma de todos os numeros inteiros do input
  final result = ValueNotifier(0);

  int addIntegers() {
    //reset do input pra novo calculo
    result.value = 0;

    //conversão da entrada de dados para inteiro
    int inputNumber = int.parse(input.text);

    //looping para listar todos os numeros do input de forma decrescente com
    //condições onde é pego o resto do "i" que significa interable que
    //multiplicado por 3 ou 5, se for igual a 0 ele soma na variavel result
    for (int i = inputNumber - 1; i > 0; i--) {
      if (i % 3 == 0 || i % 5 == 0) {
        result.value = result.value + i;
      }
    }
    return result.value;
  }
}
