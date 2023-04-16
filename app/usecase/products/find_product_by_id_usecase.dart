import '../../domain/product/product.dart';
import '../../domain/product/product_service.dart';

class FindProductByIdUsecase {
  execute(Map<String, dynamic> context) {
    ProductService service = context['productService'];

    Product? product = service.getById(context['data']);

    return product;
  }
}
