// 6. Peça um número e exiba sua tabuada de multiplicação até 10.

import 'dart:io';
int i = 0;

void main(){
  print("Insira um número: ");
  int numero = int.parse(stdin.readLineSync()!);
  tabuada(numero , i);
}

tabuada(numero , i){
  for(int i = 0 ; i < 11 ; i++ ){
    int multiplicacao = numero * i;
    print('O número: ${numero} x ${i} é: ${multiplicacao}');
  }
}