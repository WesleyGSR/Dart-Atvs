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