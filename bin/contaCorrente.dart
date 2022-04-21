import 'cliente.dart';

class ContaCorrente {
  Cliente? titular;
  int _agencia = 145;
  int get agencia => _agencia;
  set agencia(int novaAgencia) => {_agencia = novaAgencia};
  int? conta;
  double _saldo = 20.0;
  double chequeEspecial = -100.0;

  double get saldo {
    return _saldo;
  }

  set saldo(double novoSaldo) {
    _saldo = novoSaldo;
  }

  bool verificaSaldo(double valor) {
    if (_saldo - valor < chequeEspecial) {
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
      _saldo -= valor;
      contaDestino._saldo += valor;
      return true;
    }
  }
}
