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