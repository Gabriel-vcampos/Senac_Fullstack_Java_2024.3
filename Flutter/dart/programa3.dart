import 'dart:io';

void main(){
  stdout.write('Informe o clima: ');
  String? clima = stdin.readLineSync();

  stdout.write('Informe a temperatura: ');
  int temperatura = stdin.readByteSync();

  if(clima == "Sol" || temperatura >= 22){
    print('Vou na aula da transfero!');
} else {
    print('Vou fugir da aula!');
}

}