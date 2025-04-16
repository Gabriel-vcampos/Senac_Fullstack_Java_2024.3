// 5. Peça um número de 1 a 7 e exiba o dia da semana correspondente (1 = Domingo, 2 = Segunda, ...).

import 'dart:io';

void main(){
  print("Escolha um número de 1 a 7:");
  int escolha = int.parse(stdin.readLineSync()!);
  escolhaNumero(escolha);
}

escolhaNumero(escolha){
  switch(escolha){
    case 1:
      print('Hoje é Domingo!');
    case 2:
      print('Hoje é Segunda-feira!');
    case 3:
      print('Hoje é Terça-feira!');
    case 4:
      print('Hoje é Quarta-feira!');
    case 5:
      print('Hoje é Quinta-feira!');
    case 6:
      print('Hoje é Sexta-feira!');
    case 7:
      print('Hoje é Sábado-feira!');
    default:
      print('Número inválido!');
  }
}