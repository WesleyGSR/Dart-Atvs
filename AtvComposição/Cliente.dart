class Cliente {
  String nome;
  int cpf;

  Cliente({required this.nome, required this.cpf});

  String getNome() {
    return nome;
  }
  int getCpf() {
    return cpf;
  }
  void setNome(String nome) {
    this.nome = nome;
  }
  void setCpf(int cpf) {
    this.cpf = cpf;
  }
}