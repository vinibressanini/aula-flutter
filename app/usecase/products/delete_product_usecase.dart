import '../../domain/product/product_service.dart';

class DeleteProductUsecase {
  execute(Map<String, dynamic> context) {
    ProductService service = context['productService'];

    service.deleteProduct(context['id']);
  }
}
