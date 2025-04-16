/*1. Crie um programa que calcule a média de três notas digitadas pelo usuário.*/
// 2.  Com base na média de um aluno, informe se ele está aprovado (média >= 7) ou reprovado.

import 'dart:io';
double media = 0;



void main(){
  print("Insira a nota do primeiro semestre: ");

  double nota1 = double.parse(stdin.readLineSync()!);

  print("Insira a nota do segundo semestre: ");

  double nota2 = double.parse(stdin.readLineSync()!);

  print("Insira a nota do terceiro semestre: ");

  double nota3 = double.parse(stdin.readLineSync()!);
  
  print('A média é ${Calcularmedia(nota1, nota2, nota3)}');
  VerificarMedia(media);
}

double Calcularmedia(double nota1 ,double nota2 ,double nota3){
  media = (nota1 + nota2 + nota3)/3;
  return media;

}

VerificarMedia(double media){
  if(media >= 7){
    print("Sua nota está maior que 7! \nVocê está aprovado!");
  } else {
    print("Sua nota está menor que 7! \nInfelizmente você está reprovado!");
  }
}


