import '../../domain/product/product.dart';
import '../../domain/product/product_service.dart';

class GetAllProductsUsecase {
  execute(Map<String, dynamic> context) {
    ProductService service = context['productService'];

    List<Product> products = service.getAllProducts;

    return products;
  }
}
