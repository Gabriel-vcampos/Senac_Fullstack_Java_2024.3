// 7. Crie uma função que receba dois números e retorne o maior entre eles.

import 'dart:io';

void main(){
  print("Insira um número: ");
  int numero1 = int.parse(stdin.readLineSync()!);
  print("Insira outro número: ");
  int numero2 = int.parse(stdin.readLineSync()!);
  maiorOuMenor(numero1, numero2);
}

maiorOuMenor(numero1 , numero2){
  if(numero1 > numero2){
    print('O número: ${numero1} é maior que o ${numero2}');
  } else if(numero1 < numero2){
    print('O número: ${numero2} é maior que o ${numero1}');
  } else {
    print('O número: ${numero1} é igual ao ${numero2}');
  }


}