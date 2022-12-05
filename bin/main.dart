import 'dart:io';

import 'domain/conta.dart';
import 'exceptions/exceptions.dart';

void main(List<String> arguments) {
  Conta c1 = ContaCorrente('JJ', 100, 10);
  
  int opcao = -1;
  while (opcao != 0) {
    exibirMenu();
    opcao = inputAsInt('Informe a opção de menu desejada:');
    switch (opcao) {
      case 1:
        
        try {
          double valor = inputAsDouble('Informe o valor a ser creditado:');
          c1.creditar(valor);
          print('Crédito realizado com sucesso!');          
        } on ValorNegativoException {
          print('Valor inválido');
        } catch (e) {
          print('Erro, favor repetir o processo');
        }

        break;
      
      case 2:
        break;  
      case 3:
        print('Saldo: ${c1.saldo}');
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
