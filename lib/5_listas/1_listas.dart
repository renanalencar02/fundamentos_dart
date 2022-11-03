void main () {
  //estrutura base de uma lista -> List + tipo da lista + nome da lista = colchetes
  //declaração normal
  List<int> listNumeros = [1,2,3];

  //se for instanciar a lista diretamente na declaração, não precisa tipar ela
  var listNumeros2 = [1,2,3];
  
  //outras formas de criar listas
  //a primeira forma é usando List
  List<int> listaSemDados = [];
  //a segunda é usando var, porém o dart automaticamente coloca ela como dynamic, o que é errado
  var listaSemDados2 = [];
  // a terceira também usa var, porem nela você delara depois do sina de atribuição = o tipo
  var listaSemDados3 = <int>[];
  
  
  
  print(listNumeros);
}