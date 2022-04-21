import 'cliente.dart';
import 'contaCorrente.dart';

void main() {
  ContaCorrente contaDaAmanda = ContaCorrente(-123, 123);
  Cliente cliente = Cliente();
  cliente.nome = 'Amanda';
  cliente.cpf = '123.456.789-90';
  cliente.profissao = 'Programadora Dart';

  contaDaAmanda.titular = cliente;
  contaDaAmanda.saldo = -101;

  print('Agência: ${contaDaAmanda.agencia}');
  print('Titular: ${contaDaAmanda.titular?.nome}');
  print('Saldo: ${contaDaAmanda.saldo}');

  Cliente tiago = Cliente()
    ..nome = 'Tiago'
    ..cpf = '132.456.789.00'
    ..profissao = 'Programador Dart';
  ContaCorrente contaTiago = ContaCorrente(123, 123);
  contaTiago.titular = tiago;
  print('Agência: ${contaTiago.agencia}');
  print('Titular: ${contaTiago.titular?.nome}');
  print('CPF: ${contaTiago.titular?.cpf}');
  print('Profissão: ${contaTiago.titular?.profissao}');

  print(ContaCorrente.totalContaCorrente);
}
