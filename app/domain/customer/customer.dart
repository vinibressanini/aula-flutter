import '../address/address.dart';

class Customer {
  int id;
  String name;
  String cpf;
  Address address;

  Customer({
    required this.id,
    required this.name,
    required this.cpf,
    required this.address,
  });

  @override
  toString() {
    return "$id - $name - $cpf\n Endereço: - ${address.street} - ${address.number} - ${address.complement} - ${address.neighborhood} -${address.city} - ${address.cep}";
  }
}
