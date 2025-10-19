import 'q1.dart';
class Empregado extends Pessoa {
  int setor;
  double salarioBase;
  double imposto;
  Empregado(super.nome, super.endereco, super.telefone, this.setor, this.salarioBase, this.imposto);

  int getSetor() {
    return setor;
  }
  double getSalario() {
    return salarioBase;
  }
  double getImposto() {
    return imposto;
  }
  void setSetor(int setor) {
    this.setor = setor;
  }
  void setSalario(double salario) {
    this.salarioBase = salario;
  }
  void setImposto(double imposto) {
    this.imposto = imposto;
  }

  double calcularSalario() {
    return salarioBase - (salarioBase * imposto / 100);
  }
}

void main() {
  Empregado empregado = Empregado('João Silva', 'Av. Central, 456', '555-5678', 10, 3000.0, 15.0);

  print('Nome: ${empregado.getNome()}');
  print('Endereço: ${empregado.getEndereco()}');
  print('Telefone: ${empregado.getTelefone()}');
  print('Setor: ${empregado.getSetor()}');
  print('Salário Base: ${empregado.getSalario()}');
  print('Imposto: ${empregado.getImposto()}%');
  print('Salário Líquido: ${empregado.calcularSalario()}');
}