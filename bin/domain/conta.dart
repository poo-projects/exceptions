abstract class Conta {
  String cliente;
  double saldo;

  Conta(this.cliente, this.saldo);

  void creditar(double valor) {
    saldo += valor;
  }

  void debitar(double valor);
}

class ContaPoupanca extends Conta {
  double rendimento;

  ContaPoupanca(String cliente, double saldo, this.rendimento)
      : super(cliente, saldo);

  @override
  void debitar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    }
  }

  @override
  void creditar(double valor) {
    saldo += valor + 10;
  }
}

class ContaCorrente extends Conta {
  double limite;

  ContaCorrente(String cliente, double saldo, this.limite)
      : super(cliente, saldo);

  @override
  void debitar(double valor) {
    valor -= saldo;
  }
}
