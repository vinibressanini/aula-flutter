class Endereco {
    String? logradouro;
    int? numero;
    String? complemento;
    String? bairro;
    String? cidade;
    int? cep;

    Endereco( String logradouro, int numero, String complemento, String bairro, String cidade, int cep) {
        this.logradouro = logradouro;
        this.numero = numero;
        this.complemento = complemento;
        this.cidade = cidade;
        this.bairro = bairro;
        this.cep = cep;
    }
}