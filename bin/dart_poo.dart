import 'cliente.dart';
import 'contaCorrente.dart';

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
