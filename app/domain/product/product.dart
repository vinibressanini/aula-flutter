class Product {
  int id;
  String name;
  String? description;
  double value;

  Product({
    required this.id,
    required this.name,
    this.description,
    required this.value,
  });

  @override
  String toString() {
    return "$id - $name - R\$ $value - $description";
  }
}
