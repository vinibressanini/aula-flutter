import 'endereco.dart';


class Cliente {
  int? id;
  String? name;
  String? cpf;
  Endereco? endereco;

  Cliente(int id, String name , String cpf , Endereco endereco) {
    this.id = id;
    this.name = name;
    this.cpf = cpf;
    this.endereco = endereco;
  }

  toString() {
    return "$id - $name - $cpf"; 
  }
}