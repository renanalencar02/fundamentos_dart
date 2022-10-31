void main() {
  // Operadores lógicos
  // && (e), || (ou), ! (not)

  final sexo = 'M';
  final idade = 18;

  if (sexo == 'M' && idade >= 18) {
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }

  if(sexo == 'M' || idade >= 18) {
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }

  // operador ! (not)
  if(!(sexo == 'M' || idade >= 18)) {
    print('Pode entrar');
  } else {
    print('Não pode entrar');
  }


 }