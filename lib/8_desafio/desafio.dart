void main() {

  // Detalhe sobre a String
  //A String é composta pur 4 campos (Nome | Idade | Profissão Estado onde mora)

  final pacientes = [

    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP', 
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|desenvolvedor|MG',
    'Sandra Silva|48|Desenvolvedor|MG',
    'Regina Verne|35|dentista|MG',
    'João Rahman|55|jornalista|SP',
  ];

  print('==== 1 - Pacientes com mais de 20 anos ====');

  for (var paciente in pacientes) {
    var dadoPaciente = paciente.split('|');
    var idade = int.tryParse(dadoPaciente[1]) ?? 0;
    if(idade > 20){
      print(dadoPaciente[0]);
    }
  }
  print('\n');

  var desenvolvedores = [];
  var estudantes = [];
  var jornalistas = [];
  var dentistas = [];

  for (var paciente in pacientes) {
    var dadoPaciente = paciente.split('|');
    if(dadoPaciente[2].toLowerCase() == 'desenvolvedor'){
      desenvolvedores.add(dadoPaciente[0]);
    } else if(dadoPaciente[2].toLowerCase() == 'estudante'){
              estudantes.add(dadoPaciente[0]);
            } else if(dadoPaciente[2].toLowerCase() == 'dentista'){
                      dentistas.add(dadoPaciente[0]);
                    } else if(dadoPaciente[2].toLowerCase() == 'jornalista'){
                              jornalistas.add(dadoPaciente[0]);
                            }
  }

  print('==== 2 - Pacientes em cada profissão ====');
  print('Desenvolvedores:');
  for (var desenvolvedor in desenvolvedores) {
    print('   $desenvolvedor');
  }

  print('Estudantes:');
  for (var estudante in estudantes) {
    print('   $estudante');
  }

  print('Dentistas:');
  for (var dentista in dentistas) {
    print('   $dentista');
  }
  
  print('Jornalista:');
  for (var jornalista in jornalistas) {
    print('   $jornalista');
  }
  print('\n');
  print('==== 3 - Quantidade de Pacientes que moram em SP ====');
  var sp = 0;
  
  for (var paciente in pacientes) {
    var dadosPaciente = paciente.split('|');
    if(dadosPaciente[3].toLowerCase() == 'sp'){
      sp++;
    }
  }

  print('Total: $sp');
  
  
  
  
}



// Baseado no array acima monte relatório onde:
// 1- Apresente os pacientes com mais de 20 anos e print o nome deles 
// 2 - Apresente quantos pacientes existem para cada profissão (desenvolvedor, estudante, dentista, jornalista)
// 3 - Apresento a quantidade de pacientes que em SP



