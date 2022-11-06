void main () {

  var numeros = List.generate(10, (index) => index+1);
  var nomes = ['Rodrigo', 'Guilherme', 'Artur', 'Sandra', 'Marcos'];

  print('Imprimindo numeros com for convencional');
  for(var i = 0; i < numeros.length; i++){
    print(numeros[i]);
  }

  print('Imprimindo nomes com for convencional');
  for(var i = 0; i < nomes.length; i++){
    print(nomes[i]);
  }
  print('\n');

  //Foi-in, serve para percorrer uma lista inteira caso não precise do índice
  print('Imprimindo numeros com for-in');
  for(var numero in numeros){
    print(numero);
  }
  print('\n');

  //nesse caso, quando uma condição for satisfeita, o comando break encerra o loop
  print('Imprimindo nomes com for convencional e break');
  for(var i = 0; i < nomes.length; i++){
    print(nomes[i]);
    if(nomes[i] == 'Artur'){
      break;
    }
  }

  print('Imprimindo nomes com for-in e break');
  for(var nome in nomes){
    print(nome);
    if(nome == 'Sandra'){
      break;
    }
  }
  print('\n');

  // o if testa uma condição, se ela for satisfeita, o for pula ela e passa pro próximo item 
  print('Imprimindo nomes com for convencional e continue');
  for(var i = 0; i < nomes.length; i++){
    if(i == 1 || i == 3){
      continue;
    }
    print(nomes[i]);
  }

}