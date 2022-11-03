String? nomeCompleto = 'renan';
int? idade;

void main(){

  // null aware operator
  var nomeCompletoLocal = nomeCompleto ?? 'Nome não preenchido';


  // if convencional
  if(nomeCompleto != null){
    print(nomeCompleto!.toUpperCase());
  } else {
    print('Nome não preenchido');
  }

  // Conditional property Access (?)
  // se a variável nomeCompleto não for nula, ele executa o método toUpperCase (maiúsculas), se for nula, printa a mensagem)
  print(nomeCompleto?.toUpperCase() ?? 'Nome não preenchido');
  print(idade?.round() ?? 'Idade não preenchida');
}