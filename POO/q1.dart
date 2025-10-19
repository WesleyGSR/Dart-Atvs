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