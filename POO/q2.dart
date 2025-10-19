import 'q1.dart';

class Fornecedor extends Pessoa {
  double valorCredito;
  double valorDivida;
  Fornecedor(super.nome, super.endereco, super.telefone, this.valorCredito, this.valorDivida);

  double getValorCredito() {
    return valorCredito;
  }
  double getValorDivida() {
    return valorDivida;
  }
  void setValorCredito(double valorCredito) {
    this.valorCredito = valorCredito;
  }
  void setValorDivida(double valorDivida) {
    this.valorDivida = valorDivida;
  }

  double obterSaldo() {
    return valorCredito - valorDivida;
  }
}

void main() {
  Fornecedor fornecedor = Fornecedor('Empresa X', 'Rua Y, 123', '555-1234', 10000.0, 2500.0);

  print('Nome: ${fornecedor.getNome()}');
  print('Endereço: ${fornecedor.getEndereco()}');
  print('Telefone: ${fornecedor.getTelefone()}');
  print('Valor de Crédito: ${fornecedor.getValorCredito()}');
  print('Valor de Dívida: ${fornecedor.getValorDivida()}');
  print('Saldo: ${fornecedor.obterSaldo()}');
}