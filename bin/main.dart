import 'dart:io';

void main(List<String> arguments) {
  // Crie um objeto da classe Conta para ser manipulado de acordo com a lógica abaixo

  int opcao = -1;
  while (opcao != 0) {
    exibirMenu();
    opcao = inputAsInt('Informe a opção de menu desejada:');
    switch (opcao) {
      case 1:
        break;
      case 2:
        break;  
      case 3:
        break;
      default:
    }

    limparConsole(opcao);
  }
}

void exibirMenu() {
  print('''MENU
      1. Creditar
      2. Debitar
      3. Saldo
      0. Sair''');
  print('-' * 40);
}

double inputAsDouble(String msg) {
  print(msg);
  return double.parse(stdin.readLineSync()!);
}

int inputAsInt(String msg) {
  print(msg);
  return int.parse(stdin.readLineSync()!);
}

void limparConsole(int opt) {
  if (opt != 0) {
    print('\nAperte Enter para continuar :)');
    stdin.readLineSync();
  }
  print(Process.runSync("clear", [], runInShell: true).stdout);
}
