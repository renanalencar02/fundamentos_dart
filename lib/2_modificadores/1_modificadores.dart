void main() {
  var nomeCompleto = 'Renan Alencar';
  print(nomeCompleto);
  nomeCompleto = 'Renan';
  print(nomeCompleto);
  
  // Variáveis Finais:
  // Não podem ser alteradas depois de inicializadas (Imutáveis)
  // São definidas no programa em tempo de execução (Runtime)
  // Utilize sem moderação
  final nomeCompletoFinal = 'Renan Alencar';
  final nomeCompletoFinal2 = nomeCompleto;

  // Variáveis Const:
  // Não podem ser alteradas depois de inicializadas (Imutáveis)
  // São definidas no programa em tempo de COMPILAÇÃO!!!!!
  // Não podem receber valores de outras variáveis a não ser que essas variáveis forem const também
  // Utilize sem moderação
  const nomeCompletoConst = 'Renan Alencar';
  const nomeCompletoConst2 = nomeCompletoConst;
}