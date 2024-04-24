main(){
  Map<String, double> notas = {
    'João Pedro': 9.1,
    'Maria Augusta': 7.2,
    'Ana Silva': 6.4,
    'Roberto Andrade': 8.8,
    'Pedro Firmino': 9.9,
  };
  
  for(String nome in notas.keys){
    print("Nome do aluno é $nome e a nota é ${notas[nome]}");
  }

  // Resultado
Nome do aluno é João Pedro e a nota é 9.1
Nome do aluno é Maria Augusta e a nota é 7.2
Nome do aluno é Ana Silva e a nota é 6.4
Nome do aluno é Roberto Andrade e a nota é 8.8
Nome do aluno é Pedro Firmino e a nota é 9.9
  
  
  for(double nota in notas.values){
    print("A nota é $nota");
  }

  // Resultado
A nota é 9.1
A nota é 7.2
A nota é 6.4
A nota é 8.8
A nota é 9.9
  
  for(var registro in notas.entries){
    print("${registro.key} tem nota ${registro.value}.");
  }
}

   // Resultado
João Pedro tem nota 9.1.
Maria Augusta tem nota 7.2.
Ana Silva tem nota 6.4.
Roberto Andrade tem nota 8.8.
Pedro Firmino tem nota 9.9.
