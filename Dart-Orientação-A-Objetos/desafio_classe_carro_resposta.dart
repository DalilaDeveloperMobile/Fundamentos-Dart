// carro.dart
class Carro {
  final int velocidadeMaxima;
  int velocidadeAtual = 0;
  
  Carro([this.velocidadeMaxima = 200]);
  
  int acelerar(){
    if(velocidadeAtual + 5 >= velocidadeMaxima){
      velocidadeAtual = velocidadeMaxima;
    } else {
      velocidadeAtual += 5;
    }
    return velocidadeAtual;
  }
  
  int frear(){
    if(velocidadeAtual - 5 <= 0){
      velocidadeAtual = 0;
    } else {
      velocidadeAtual -= 5;
    }
    return velocidadeAtual;
  }
  
  bool estaNoLimite(){
    return velocidadeAtual == velocidadeMaxima;
  }
  
   bool estaParado(){
    return velocidadeAtual == 0;
  }
}

// teste_carro.dart
// import '../modelo/carro.dart';

main() {
 
  var c1 = Carro(320);
  
  while(!c1.estaNoLimite()){
    print("A velocidade atual é ${c1.acelerar()} Km/h.");
  }
  
  print("O carro chegou no máximo com valocidade ${c1.velocidadeAtual} Km/h.");

 while(!c1.estaParado()){
   print("A velocidade atual é ${c1.frear()} Km/h.");
 }
  
  print("O carro parou com velocidade ${c1.velocidadeAtual} Km/h."); 
}

/* 
// Resultado
A velocidade atual é 5 Km/h.
A velocidade atual é 10 Km/h.
A velocidade atual é 15 Km/h.
A velocidade atual é 20 Km/h.
A velocidade atual é 25 Km/h.
A velocidade atual é 30 Km/h.
A velocidade atual é 35 Km/h.
A velocidade atual é 40 Km/h.
A velocidade atual é 45 Km/h.
A velocidade atual é 50 Km/h.
A velocidade atual é 55 Km/h.
A velocidade atual é 60 Km/h.
A velocidade atual é 65 Km/h.
A velocidade atual é 70 Km/h.
A velocidade atual é 75 Km/h.
A velocidade atual é 80 Km/h.
A velocidade atual é 85 Km/h.
A velocidade atual é 90 Km/h.
A velocidade atual é 95 Km/h.
A velocidade atual é 100 Km/h.
A velocidade atual é 105 Km/h.
A velocidade atual é 110 Km/h.
A velocidade atual é 115 Km/h.
A velocidade atual é 120 Km/h.
A velocidade atual é 125 Km/h.
A velocidade atual é 130 Km/h.
A velocidade atual é 135 Km/h.
A velocidade atual é 140 Km/h.
A velocidade atual é 145 Km/h.
A velocidade atual é 150 Km/h.
A velocidade atual é 155 Km/h.
A velocidade atual é 160 Km/h.
A velocidade atual é 165 Km/h.
A velocidade atual é 170 Km/h.
A velocidade atual é 175 Km/h.
A velocidade atual é 180 Km/h.
A velocidade atual é 185 Km/h.
A velocidade atual é 190 Km/h.
A velocidade atual é 195 Km/h.
A velocidade atual é 200 Km/h.
A velocidade atual é 205 Km/h.
A velocidade atual é 210 Km/h.
A velocidade atual é 215 Km/h.
A velocidade atual é 220 Km/h.
A velocidade atual é 225 Km/h.
A velocidade atual é 230 Km/h.
A velocidade atual é 235 Km/h.
A velocidade atual é 240 Km/h.
A velocidade atual é 245 Km/h.
A velocidade atual é 250 Km/h.
A velocidade atual é 255 Km/h.
A velocidade atual é 260 Km/h.
A velocidade atual é 265 Km/h.
A velocidade atual é 270 Km/h.
A velocidade atual é 275 Km/h.
A velocidade atual é 280 Km/h.
A velocidade atual é 285 Km/h.
A velocidade atual é 290 Km/h.
A velocidade atual é 295 Km/h.
A velocidade atual é 300 Km/h.
A velocidade atual é 305 Km/h.
A velocidade atual é 310 Km/h.
A velocidade atual é 315 Km/h.
A velocidade atual é 320 Km/h.
O carro chegou no máximo com valocidade 320 Km/h.
A velocidade atual é 315 Km/h.
A velocidade atual é 310 Km/h.
A velocidade atual é 305 Km/h.
A velocidade atual é 300 Km/h.
A velocidade atual é 295 Km/h.
A velocidade atual é 290 Km/h.
A velocidade atual é 285 Km/h.
A velocidade atual é 280 Km/h.
A velocidade atual é 275 Km/h.
A velocidade atual é 270 Km/h.
A velocidade atual é 265 Km/h.
A velocidade atual é 260 Km/h.
A velocidade atual é 255 Km/h.
A velocidade atual é 250 Km/h.
A velocidade atual é 245 Km/h.
A velocidade atual é 240 Km/h.
A velocidade atual é 235 Km/h.
A velocidade atual é 230 Km/h.
A velocidade atual é 225 Km/h.
A velocidade atual é 220 Km/h.
A velocidade atual é 215 Km/h.
A velocidade atual é 210 Km/h.
A velocidade atual é 205 Km/h.
A velocidade atual é 200 Km/h.
A velocidade atual é 195 Km/h.
A velocidade atual é 190 Km/h.
A velocidade atual é 185 Km/h.
A velocidade atual é 180 Km/h.
A velocidade atual é 175 Km/h.
A velocidade atual é 170 Km/h.
A velocidade atual é 165 Km/h.
A velocidade atual é 160 Km/h.
A velocidade atual é 155 Km/h.
A velocidade atual é 150 Km/h.
A velocidade atual é 145 Km/h.
A velocidade atual é 140 Km/h.
A velocidade atual é 135 Km/h.
A velocidade atual é 130 Km/h.
A velocidade atual é 125 Km/h.
A velocidade atual é 120 Km/h.
A velocidade atual é 115 Km/h.
A velocidade atual é 110 Km/h.
A velocidade atual é 105 Km/h.
A velocidade atual é 100 Km/h.
A velocidade atual é 95 Km/h.
A velocidade atual é 90 Km/h.
A velocidade atual é 85 Km/h.
A velocidade atual é 80 Km/h.
A velocidade atual é 75 Km/h.
A velocidade atual é 70 Km/h.
A velocidade atual é 65 Km/h.
A velocidade atual é 60 Km/h.
A velocidade atual é 55 Km/h.
A velocidade atual é 50 Km/h.
A velocidade atual é 45 Km/h.
A velocidade atual é 40 Km/h.
A velocidade atual é 35 Km/h.
A velocidade atual é 30 Km/h.
A velocidade atual é 25 Km/h.
A velocidade atual é 20 Km/h.
A velocidade atual é 15 Km/h.
A velocidade atual é 10 Km/h.
A velocidade atual é 5 Km/h.
A velocidade atual é 0 Km/h.
O carro parou com velocidade 0 Km/h.
 */
