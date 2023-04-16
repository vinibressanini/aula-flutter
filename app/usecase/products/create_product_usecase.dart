import '../../domain/product/product.dart';
import '../../domain/product/product_service.dart';

class CreateProductUsecase {
  execute(Map<String, dynamic> context) {
    Map<String, dynamic> data = context['data'];

    int id = 0;
    String name = data['name'] ?? "";
    String description = data['description'] ?? "";
    double value = data['value'] ?? "";

    ProductService service = context['productService'];

    service.addProduct(Product(
      id: id,
      name: name,
      value: value,
      description: description,
    ));
  }
}
