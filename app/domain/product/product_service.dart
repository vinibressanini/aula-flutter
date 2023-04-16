import 'product.dart';
import 'package:collection/collection.dart';

class ProductService {
  List<Product> _products = [];

  void addProduct(Product product) {
    if (_products.isEmpty) {
      product.id = 1;
      _products.add(product);
    } else {
      product.id = _products.last.id + 1;
      _products.add(product);
    }
  }

  get getAllProducts => _products;

  Product? getById(int id) {
    return _products.firstWhereOrNull((c) => c.id == id);
  }

  void deleteProduct(int id) {
    _products.removeWhere((product) => product.id == id);
  }

  void updateProduct(Product product) {
    // Insert the new product
    _products.insert(product.id - 1, product);
    // Remove the older product
    _products.removeAt(product.id);
  }
}
