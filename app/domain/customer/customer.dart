import '../address/address.dart';

class Customer {
  final int id;
  final String name;
  final String cpf;
  final Address address;

  Customer({
    required this.id,
    required this.name,
    required this.cpf,
    required this.address,
  });

  toString() {
    return "$id - $name - $cpf\n Address - ${address.street} - ${address.number} - ${address.complement} - ${address.neighborhood} -${address.city} - ${address.cep}";
  }
}
