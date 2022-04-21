void main() {
  ContaCorrente contaDaAmanda = ContaCorrente();
  Cliente cliente = Cliente();
  cliente.nome = 'Amanda';
  cliente.cpf = '123.456.789-90';
  cliente.profissao = 'Programadora Dart';

  contaDaAmanda.titular = cliente;

  print('Titular: ${contaDaAmanda.titular?.nome}');
  print('Saldo: ${contaDaAmanda.saldo}');
}

class Cliente {
  String? nome;
  String? cpf;
  String? profissao;
}

class ContaCorrente {
  Cliente? titular;
  int agencia = 145;
  int? conta;
  double saldo = 20.0;
  double chequeEspecial = -100.0;
}
