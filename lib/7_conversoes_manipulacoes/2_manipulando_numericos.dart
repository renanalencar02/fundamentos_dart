void main() {

  final idade = 30;
  print('Sua idade é $idade'); //interpolação

  final valor = 20;

  //testa se o valor armazenado é negativo
  if(valor.isNegative){
    print(valor);
  } else {
    print('Valor positivo = $valor');
  }

  //round arredonda para um numero inteiro
  final valorDouble = 15.64;
  print(valorDouble.round());
  // roundToDouble arredonda para um número real
  print(valorDouble.roundToDouble());  

  print('\n');

  // converte uma string num inteiro. o tryParse tenta converter, caso não consiga retorna null
  final valorCertoString = '30';
  final valorErradoString = 'Renan';

  final valorInt = int.parse(valorCertoString);
  final valorInt2 = int.tryParse(valorErradoString);
  print(valorInt);
  
  if(valorInt2 != null){
    print('O valor é: ${valorInt2 + 2}');
  } else {
    print("Valor nulo");
  } 

  //toStringAsFixed define a quatidade de casas decimais
  final precoCamiseta = 30.24589;
  print(precoCamiseta.toStringAsFixed(2));



}
