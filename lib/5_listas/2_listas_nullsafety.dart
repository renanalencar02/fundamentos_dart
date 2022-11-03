void main() {

  // ? = nullable (aceita nulo)
  // sem nada = non-null (Não aceita nulo)

  //Não aceita ser nulo
  List<String> nomes = [];
  var nomes2 = <String>[];

  //aceita nulo
  List<String>? nomesNulos;

  //Lista não pode ser nulos, nem os itens
  List<String> nomesInternosNaoAceitaNulos = ['Renan'];

  //Lista não pode ser nula, mas os itens internos podem ser nulos
  List<String?> nomesInternosAceitaNulos = ['Renan', null, 'Mateus', null, 'Manu'];
  var nomesInternosAceitaNulos1 = <String?>['Renan', null, 'Manu', null];

  //Lista pode ser nula e os intens também podem ser nulos
  List<String?>? nomesInternosAceitaNulos2 = null;
}