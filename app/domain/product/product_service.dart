import 'product.dart';

class ProductService {

    List<Product> products = [];

    addProduct(Product product) {
        products.add(product);
    }

}