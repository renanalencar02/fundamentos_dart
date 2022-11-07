void main() {
  
  var numeros = List.generate(10, (index) => index);
  
  //nesse caso o for percorre a lista e quando chegar na condição definida, pula o indice.
  /*for(var i = 0; i < numeros.length; i++){
    if (i == 5){
      continue;
    }
    
    print(numeros[i]);
  }*/

  //where é um metodo de iterable, ele filtra um elemento na lista. Faz a mesma função do for acima de exemplo
  // se for fazer alguma requisição assincrona, que será estudada ainda, não utilizar o forEach dessa forma
  //looping forEach faz um print da lista
  numeros
  .where((numero) => numero != 5)
  .forEach((numero) => print(numero));

  print('\n');

  // foram chamados 3 metodos encadeados, o takeWhile retorna os números menores que 7, o where remove o numero 5 
  // e o toList transforma o iterable numa lista, porque o takeWhile e o where transformam a lista num iterable e 
  // a forma de acessar eles é diferente, então pra facilitar a gente volta a lista para a forma padrão
  final numerosAte6 = numeros
    .takeWhile((numero) => numero < 7)
    .where((element) => element != 5)
    .toList();

  print(numerosAte6);
  
  // nesse caso, o skipWhile remove os número menores do que 6 da lista
  final removerAte5 = numeros
    .skipWhile((numero) => numero < 6)
    .toList();

  print(removerAte5);  

  //quando o skipWhile encontrar o primeiro true, ele retorna dali para frente
  var nomes = ['Renan', 'Manu', 'Lobinha', 'Tigresa', 'Mateus'];
  final removerNomes = nomes
    .skipWhile((nome){
      if(nome == 'Tigresa'){
        return false;
      } else {
         return true; 

      }
    })
    .toList();
  print(removerNomes);

  final removerNomes2 = nomes
    .where((element) {
      if(element == 'Lobinha' || element == 'Tigresa'){
        return false;
      } else {
        return true;
      }
    })
    .toList();

    print(removerNomes2);
    print('\n');
  
  //o map transforma a sua lista em outra lista, fazendo o que ele quiser
  // nesse caso, ele transforma a lista de inteiros numa lista de string
  var numeroStrList = numeros.map((numero){
    return 'Numero é $numero';
  } )
    .toList();

    print(numeroStrList);

  // aqui ele soma 10 a cada um dos elementos da lista de inteiros
  var numeroList = numeros.map((numero){
    return numero + 10;
  } )
    .toList();

    print(numeroList);

  //o reversed reverte a ordem da lista de numeros
  final numeroRevertido = numeroList.reversed.toList();
  print(numeroRevertido);  


}