// 3. Leia um número e informe se ele é par ou ímpar.

import 'dart:io';

void main(){
  print("Insira um número: ");
  int numero = int.parse(stdin.readLineSync()!);
  verificarParImpar(numero);
}

verificarParImpar(numero){
  if (numero % 2 == 0){
      print('O número: ${numero} é: Par!');
  } else {
      print('O número: ${numero} é: Ímpar!');
  }
}