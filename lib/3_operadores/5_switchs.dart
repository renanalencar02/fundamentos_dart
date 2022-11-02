import 'dart:io';

void main() {
  final diaDaSemana = 7;
  String diaDaSemanaStr;

  switch(diaDaSemana){
    case 1:
      diaDaSemanaStr = 'Domingo';
      break;
    case 2:
      diaDaSemanaStr = 'Segunda';
      break; 
    case 3:
      diaDaSemanaStr = 'Terça';
      break;
    case 4:
      diaDaSemanaStr = 'Quarta';
      break;
    case 5:
      diaDaSemanaStr = 'Quinta';
      break;
    case 6:
      diaDaSemanaStr = 'Sexta';
      break;  
    case 7:
      diaDaSemanaStr = 'Sábado';
      break;   
    default:
      diaDaSemanaStr = 'Dia inválido';
      break;  
  }

  print(diaDaSemanaStr);


  //exemplo de switch com uma mesma saída para valores diferentes
  final idade = 21;
  switch(idade) {
    case 18:
    case 19:
    case 20:
    case 21:
      print('Maior de idade');
      break;
    default:
      print('Menor de idade');  
  }


}