import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int numeroAleatorio = random.nextInt(100) + 1;  // Número entre 1 e 100
  int tentativas = 0;
  bool acertou = false;

  print('Bem-vindo ao Jogo da Adivinhação!');
  print('Tente adivinhar o número entre 1 e 100.');

  while (!acertou) {
    stdout.write('Digite seu palpite: ');
    String? input = stdin.readLineSync();
    int palpite;

    try {
      palpite = int.parse(input!);
    } catch (e) {
      print('Por favor, insira um número válido.');
      continue;
    }

    tentativas++;
    
    if (palpite < numeroAleatorio) {
      print('Muito baixo!');
    } else if (palpite > numeroAleatorio) {
      print('Muito alto!');
    } else {
      print('Parabéns! Você acertou em $tentativas tentativas.');
      acertou = true;
    }
  }
}
