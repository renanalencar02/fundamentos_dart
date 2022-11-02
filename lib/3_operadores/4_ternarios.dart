void main() {

  final idade = 12;

  if (idade >= 18) {
    print('Maior de idade!');
  } else {
    print('Menor de idade');
  }

  // Ternário --> (condicao) ? faca algo : outra coisa
  final eMaiorDeIdade = idade >= 18 ? true : false;
  bool eMaiorDeIdade2;

  // mesmo código (final eMaiorDeIdade = idade >= 18 ? true : false;) usando if else
  if(idade >= 18){
    eMaiorDeIdade2 = true;
  } else {
    eMaiorDeIdade2 = false;
  }

  print('É maior de idade: ' + eMaiorDeIdade.toString());

  //é preciso ter cuidado no uso do ternário para não gerar uma complexidade muito grande
  print((idade < 13) ? 'Criança' : (idade > 12 && idade < 18) ? 'Adolescente' : 'Adulto');

  //o simples é sempre melhor, se ficar confuso e exigir muito raciocínio, não vale a pena

}