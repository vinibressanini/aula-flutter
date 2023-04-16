import '../../domain/product/product.dart';
import '../../usecase/products/find_product_by_id_usecase.dart';
import '../view.dart';

import 'dart:io';

class FindProductByIdView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print("\nInforme o ID do produto que deseja buscar:");
    int? id = int.tryParse(terminal.readLineSync() ?? '0');

    if (id == null || id < 1) {
      print("\nID inválido. Por favor informe um número positivo");
      return;
    }

    Product? product =
        FindProductByIdUsecase().execute({...context, 'data': id});

    if (product == null) {
      print("\nProduto não encontrado");
    } else {
      print("\n${product.toString()}");
    }
  }
}
