import 'cliente.dart';

class ContaCorrente {
  Cliente? titular;
  int agencia = 145;
  int? conta;
  double saldo = 20.0;
  double chequeEspecial = -100.0;

  bool verificaSaldo(double valor) {
    if (saldo - valor < chequeEspecial) {
      print('Sem saldo suficiente.');
      return false;
    } else {
      print('Movimentando R\$ $valor');
      return true;
    }
  }

  bool transferencia(double valor, ContaCorrente contaDestino) {
    if (!verificaSaldo(valor)) {
      return false;
    } else {
      saldo -= valor;
      contaDestino.saldo += valor;
      return true;
    }
  }
}
