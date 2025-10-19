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