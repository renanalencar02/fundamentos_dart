void main() {
  
  // operadores relacionais
  // temos 6 tipos
  // == (igualdade), != (diferença), > (maior que), < (menor que), <= (menor igual), >= (maior igual)

  final idade = 18;
  final tipoPet = 'Gato';

  // regra de negocio para tirar habilitação
  if (idade == 18) {
    print('Pode tirar habilitação');
  } 

  if (idade > 17) {
    print('Pode tirar habilitação');
  }

  if (idade >= 18) {
    print('Pode tirar habilitação');
  }

  if(tipoPet != 'Cachorro') {
    print('Desculpe mas não temos nada para seu pet');
  }

}