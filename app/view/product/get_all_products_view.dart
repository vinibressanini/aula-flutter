import '../../domain/product/product.dart';
import '../../domain/product/product_service.dart';
import '../view.dart';

class GetAllProductsView extends View {
  @override
  render(Map<String, dynamic> context) {
    ProductService service = context['productService'];
    List<Product> products = service.getAllProducts;
    for (Product product in products) {
      print("\n\n ${product.toString()}");
    }
  }
}
