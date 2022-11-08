void main() {

  final nome = 'Renan Alencar';

  //mostra um intervalo de caracteres. Caso tenha um valor no parametro, retorna a partir do caracte seguinte
  //caso tenha dois valores separados por vírgula, retorna o intervalo entre um valor e outro
  var subStringNome = nome.substring(6);
  print(subStringNome);
  
  var subStringNome2 = nome.substring(0,6);
  print(subStringNome2);

  //busca o caractere do intervalo definido, pode ser usado para identificar um sexo
  var sexo = 'Masculino';
  var sexoSigla = sexo.substring(0,1);
  print(sexoSigla);

  if(sexoSigla == 'M'){
    print('Sexo masculino');
 }

  //um metodo mais eficiente pra buscar as primeiras letras seria o startsWhith
  //você que define quais os caracteres iniciais
  //obs: é case sensitive, tem que ser exatamente como está escrito
  if(sexo.startsWith('Mas')){
    print('Sexo masculino 2');
  }
  
  //metodo toLowerCase transforma tudo em minúsculo/ toUpperCas em maiúsculo
  if(sexo.toLowerCase().startsWith('mas')){
    print('Sexo masculino 3');
  }
  // método contains verifica se existe a parte especificada nos caracteres
  if(nome.toLowerCase().contains('alencar')){
    print('É da família Alencar');
  }
  print('\n');

  //interpolação

  var primeiroNome = 'Renan';
  var segundoNome = 'Alencar';
  var saudacao = 'Ola '+primeiroNome + ' ' + segundoNome + ', seja bem vindo';
  print(saudacao);
  //usando o simbolo $ você consegue interpolar uma variável na string, ficando visivelmente mais interessante
  var saudacao2 = 'Olá, $primeiroNome $segundoNome, seja bem vindo!';
  print(saudacao2);
  //caso precise manipular a variável, colocar após o $ um conjunto de chaves -> {}
  //o dart entende que tudo que está entre as chaves não é uma string, ele precisa executar e printar junto com a string
  print("OLÁ, ${primeiroNome.toUpperCase()}");
  print('\n');
 
  //split, ele quebra a string por um caractere específico e coloca todos os dados individuais numa lista 
  var paciente = 'Renan Alencar|30|Policial Militar|PE';
  var dadosPaciente = paciente.split('|');
  print(dadosPaciente);
  print('Nome: ${dadosPaciente[0]}');
  print('Idade: ${dadosPaciente[1]}');

  dadosPaciente.forEach((dado) => print(dado) );
  print('\n');


  // a lista pacientes apresenta dados de varias pessoas
  //é executado um for in para percorrer por cada pessoa individualmente
  //e em cada pessoa é usado um split para quebrar infomações de nome, profissão.. usando caracteres especificos (|)
  var pacientes = [
    'Renan Nunes|29|Policial Militar|PI',
    'Emanuele Alencar|27|Designer|PI',
    'Mateus Rodrigues|0.2|Bebê|PE'

  ];

  for (var paciente in pacientes) {
    var dadosPaciente2 = paciente.split('|');
    print('Profissâo: ${dadosPaciente2[2]}');
  }

  //percorre os dados individualmente, identifica o dado de nome e quebra ele com split usando o caractere de espaço
  //depois imprime o primeiro ou ultimo nome usando o last ou first.
  //poderia ainda imprimir usando o indice da lista sobrenome
  for (var paciente in pacientes) {
    var dadosPaciente2 = paciente.split('|');
    var nomePaciente = dadosPaciente2[0];
    var sobrenome = nomePaciente.split(' ');
    print('Sobrenome: ${sobrenome.last}');
  }

}