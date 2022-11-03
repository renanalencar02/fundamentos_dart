
String? nomeSuperior;

void main(){

  //tratamento de nulos

  String nome = '';
  String? nomeNula;

  if(nomeNula != null){
    nomeNula.isEmpty;
  }
  nome.isEmpty;
 
 
  //transformando variável superior em variável local, fazendo checagem. 
  var nomeLocal = nomeSuperior;
  if(nomeLocal != null){
    nomeLocal.isEmpty;
  }

  nomeSuperior = 'Renan';
  nomeSuperior!.isEmpty;




}