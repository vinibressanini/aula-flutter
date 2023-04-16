class Address {
  final String street;
  final int number;
  String? complement;
  final String neighborhood;
  final String city;
  final int cep;

  Address({
    required this.street,
    required this.number,
    this.complement,
    required this.neighborhood,
    required this.city,
    required this.cep,
  });
}
