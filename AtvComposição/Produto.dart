class Produto {
  int codigo;
  String nome;
  double preco;
  double desconto = 0.0;

  Produto({required this.codigo, required this.nome, required this.preco});

  int getCodigo() {
    return codigo;
  }
  String getNome() {
    return nome;
  }
  double getPreco() {
    return preco;
  }
  double getDesconto() {
    return desconto;
  }
  void setNome(String nome) {
    this.nome = nome;
  }
  void setCodigo(int codigo) {
    this.codigo = codigo;
  }
  void setPreco(double preco) {
    this.preco = preco;
  }
  void setDesconto(double desconto) {
    this.desconto = desconto;
  }

  double getPrecoComDesconto() {
    return preco - desconto;
  }
}