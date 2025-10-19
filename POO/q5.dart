import 'q3.dart';

class Operario extends Empregado {
  double valorProducao;
  double comissao;
  Operario(super.nome, super.endereco, super.telefone, super.setor, super.salarioBase, super.imposto, this.valorProducao, this.comissao);

  double getValorProducao() {
    return valorProducao;
  }
  double getComissao() {
    return comissao;
  }
  void setValorProducao(double valorProducao) {
    this.valorProducao = valorProducao;
  }
  void setComissao(double comissao) {
    this.comissao = comissao;
  }

  @override
  double calcularSalario() {
    double salarioBaseCalculado = super.calcularSalario();
    double comissaoCalculada = (valorProducao * comissao) / 100;
    return salarioBaseCalculado + comissaoCalculada;
  } 
}

void main() {
  Operario operario = Operario('João Silva', 'Rua A, 456', '555-5678', 2, 2000.0, 10.0, 5000.0, 5.0);

  print('Nome: ${operario.getNome()}');
  print('Endereço: ${operario.getEndereco()}');
  print('Telefone: ${operario.getTelefone()}');
  print('Setor: ${operario.getSetor()}');
  print('Salário Base: ${operario.getSalario()}');
  print('Imposto: ${operario.getImposto()}%');
  print('Valor de Produção: ${operario.getValorProducao()}');
  print('Comissão: ${operario.getComissao()}%');
  print('Salário Final: ${operario.calcularSalario()}');
}