import 'q3.dart';

class Administrador extends Empregado {
  double ajudaDeCusto;
  Administrador(super.nome, super.endereco, super.telefone, super.setor, super.salarioBase, super.imposto, this.ajudaDeCusto);

  double getAjudaDeCusto() {
    return ajudaDeCusto;
  }
  void setAjudaDeCusto(double ajudaDeCusto) {
    this.ajudaDeCusto = ajudaDeCusto;
  }

  @override
  double calcularSalario() {
    return super.calcularSalario() + ajudaDeCusto;
  }
}

void main() {
  Administrador admin = Administrador('Carlos Silva', 'Av. Central, 456', '555-5678', 10, 5000.0, 15.0, 800.0);

  print('Nome: ${admin.getNome()}');
  print('Endereço: ${admin.getEndereco()}');
  print('Telefone: ${admin.getTelefone()}');
  print('Setor: ${admin.getSetor()}');
  print('Salário Base: ${admin.getSalario()}');
  print('Imposto: ${admin.getImposto()}%');
  print('Ajuda de Custo: ${admin.getAjudaDeCusto()}');
  print('Salário Final: ${admin.calcularSalario()}');
}