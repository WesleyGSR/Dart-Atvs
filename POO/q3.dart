class Pessoa {
  String nome;
  String endereco;
  String telefone;

  Pessoa(this.nome, this.endereco, this.telefone);
  Pessoa.noTel(this.nome, this.endereco) : telefone = '';
  Pessoa.vazio() : nome = '', endereco = '', telefone = '';

  String getNome() {
    return nome;
  }
  String getEndereco() {
    return endereco;
  }

  String getTelefone() {
    return telefone;
  }
  void setNome(String nome) {
    this.nome = nome;
  }
  void setEndereco(String endereco) {
    this.endereco = endereco;
  }
  void setTelefone(String telefone) {
    this.telefone = telefone;
  }
}
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