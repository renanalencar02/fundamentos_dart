String? nome;

void main(){
  //o null aware operator (??) testa se a variável é nula, se náo for, ela é atribuida, se for, usa-se o outro elemento da condição
  var sobrenome = 'Alencar';
  //var nomeCompleto = ((nome != null) ? nome! + 'Alencar' : 'Renan Alencar'); <-- modelo de teste de nulidade da variável com ternário
  var nomeCompleto = (nome ?? 'Antonio ') + sobrenome; // <-- modelo de teste de nulidade da variável nome com null aware operator
  print(nomeCompleto);
  String? nomeCompleto2;

  print(nomeCompleto2 ?? 'Renan Alencar');
}