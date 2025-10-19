import 'q3.dart';

class Vendedor extends Empregado {
  double valorVendas;
  double comissao;

  Vendedor(super.nome, super.endereco, super.telefone, super.setor, super.salarioBase,
      super.imposto, this.valorVendas, this.comissao);

  double getValorVendas() {
    return valorVendas;
  }
  double getComissao() {
    return comissao;
  }
  void setValorVendas(double valorVendas) {
    this.valorVendas = valorVendas;
  }

  void setComissao(double comissao) {
    this.comissao = comissao;
  }

  @override
  double calcularSalario() {
    double salarioBaseCalculado = super.calcularSalario();
    double comissaoCalculada = (valorVendas * comissao) / 100;
    return salarioBaseCalculado + comissaoCalculada;
  }
}

void main() {
  Vendedor vendedor = Vendedor('Ana', 'Rua B, 456', '987-6543', 2, 3000.0, 10.0, 5000.0, 5.0);

  print('Nome: ${vendedor.getNome()}');
  print('Endereço: ${vendedor.getEndereco()}');
  print('Telefone: ${vendedor.getTelefone()}');
  print('Setor: ${vendedor.getSetor()}');
  print('Salário Base: ${vendedor.getSalario()}');
  print('Imposto: ${vendedor.getImposto()}%');
  print('Valor de Vendas: ${vendedor.getValorVendas()}');
  print('Comissão: ${vendedor.getComissao()}%');
  print('Salário Final: ${vendedor.calcularSalario()}');
}