import '../../domain/product/product.dart';
import '../../domain/product/product_service.dart';

class UpdateProductUsecase {
  execute(Map<String, dynamic> context) {
    var data = context['data'];
    ProductService service = context['productService'];

    Product product = Product(
        id: data['id'],
        name: data['name'],
        value: data['value'],
        description: data['description']);

    service.updateProduct(product);
  }
}
