import 'cliente.dart';
import 'contaCorrente.dart';

void main() {
  ContaCorrente contaDaAmanda = ContaCorrente();
  Cliente cliente = Cliente();
  cliente.nome = 'Amanda';
  cliente.cpf = '123.456.789-90';
  cliente.profissao = 'Programadora Dart';

  contaDaAmanda.titular = cliente;
  contaDaAmanda.saldo = -101;

  print('Titular: ${contaDaAmanda.titular?.nome}');
  print('Saldo: ${contaDaAmanda.saldo}');

  Cliente tiago = Cliente()
    ..nome = 'Tiago'
    ..cpf = '132.456.789.00'
    ..profissao = 'Programador Dart';
  ContaCorrente contaTiago = ContaCorrente();
  contaTiago.titular = tiago;
  print('Titular: ${contaTiago.titular?.nome}');
  print('CPF: ${contaTiago.titular?.cpf}');
  print('Profissão: ${contaTiago.titular?.profissao}');
}
