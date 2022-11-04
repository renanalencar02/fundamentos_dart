
void main() {

  final numeros = [1,2,3,4];
  print(numeros);

  //função que adiciona um item ao final da lista add()
  numeros.add(5);
  print(numeros);

  final nomes = ['Renan', 'Manu', 'Mateus'];
  print(nomes);
  nomes.add('Lobinha');
  print(nomes);
  // acessa o item da lista atraves do índice
  print(nomes[2]);
  
  // função que adiciona uma lista de itens novos na lista existente (nomes)
  nomes.addAll(['Daniel', 'Karol', 'Francisca', 'Teste']);
  print('=== Adicionando nomes na lista');
  print(nomes);
  print('\n');
  // função que incrementa um intem na posição indicada e passa os outros pra frente
  nomes.insert(0, 'Tigresa');
  print('==== Adicionando tigresa');
  print(nomes);
  // função que remove um item da lista, a função retorna true ou false, se true, é porque encontrou o item e removeu
  //, se false, nada acontece, o item não foi encontrado. Não depende o índice, precisa ser exatamente igual.
  nomes.remove('Teste');
  print(nomes);

  //função que percorre toda a lista e remove o nome buscado
  nomes.removeWhere((nome) => nome == 'Renan');
  print(nomes);
  print('\n');

  //print(nomes[0]); <-- substituir isso, retorna o primeiro elemento da lista
  print(nomes.first);
  //print(nomes[nomes.length - 1]); <-- substituir isso, retorna o ultimo elemento da lista
  print(nomes.last);

  // percorre a lista e retorna o primeiro elemento buscado quando for encontrado
  var primeiroNome = nomes.firstWhere((nome) => nome == 'Lobinha');
  print(primeiroNome); 
  print('\n');

 // função que gera uma lista, no caso uma lista de numeros com tamanho 20. Index representa o ponto de partida (0)
  final numerosGerados = List.generate(20, (index) => index);
  print(numerosGerados);
  final stringsGerados = List.generate(20, (index) => 'Indice: ${index}');
  print(stringsGerados);
  print('\n');

  // gera uma lista de tamanho definido de alguma coisa repetidamente
  final repeticoes = List.filled(10, 'Renan');
  print(repeticoes);
  final repeticoes2 = List.filled(10, 2);
  print(repeticoes2);

  //gera uma lista de 10 numeros
  final numerosGeradosParaCalculo = List.generate(10, (index) => index + 1);
  //soma todos os elementos de uma lista, o valor inicial é 0, valor prévio é o valor calculado e numero é o numero da lista
  // 0 + 1
  // 1 + 2
  // 3 + 3
  // 6 + 4
  // ...
  var soma = numerosGeradosParaCalculo.fold<int>(0, (previousValue, numero) => previousValue += numero);
  print(soma);
  print('\n');

  //spread operator (...) faz a mesma função do addAll, adiciona uma lista em outra existente
  var listaNumerosSpread = [4,5,6];
  var listaNumerosSpreadB = [1,2,3, ...listaNumerosSpread];

  print(listaNumerosSpreadB);


  // Collection if, caso uma condição seja satisfeita, incrementa um elemento na lista
  var promocaoAtiva = true;
  var produtos = [
    'Sanduiche',
    'Batata frita',
    if(promocaoAtiva) 'Refrigerante'
  ];
  print(produtos);

  // Collection for, ele percorre uma lista existente e acrescenta os itens dela na lista
  var listaInts = ['Renan', 'Manu', 'Mateus'];
  var listaStrings = [
    '#0',
    '#01',
    for (var i in listaInts) '#$i'
  ];
  print(listaStrings);

  //separa os elementos da lista com elemento predefinido
  var string = listaStrings.join(' --> ');
  print(string);
}