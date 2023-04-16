import 'dart:io';

import '../../domain/product/product.dart';
import '../../usecase/products/find_product_by_id_usecase.dart';
import '../../usecase/products/update_products_usecase.dart';
import '../view.dart';

class UpdateProductView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print("\nInforme o ID do produto que deseja atualizar");

    int? id = int.tryParse(terminal.readLineSync() ?? '0');

    if (id == null || id < 1) {
      print("ID inválido. Por favor informe um número positivo");
      return;
    }

    Product? product =
        FindProductByIdUsecase().execute({...context, 'data': id});

    if (product == null) {
      print("Produto não encontrado. Informe um ID válido");
      return;
    }

    print('\nDigite o nome do produto');
    String name = terminal.readLineSync() ?? "";

    if (name.length < 3) {
      print("\n\nNome invalido");
      return;
    }

    print('\nDigite o valor do produto');
    double? value = double.tryParse(terminal.readLineSync() ?? '0.0');

    if (value == null || value <= 0.0) {
      print("\n Valor inválido. Informe um valor maior que zero");
      return;
    }

    print('\nDigite a descrição do produto:');
    String description = terminal.readLineSync() ?? "";

    Map<String, dynamic> data = {
      'id': id,
      "name": name,
      "value": value,
      "description": description,
    };

    UpdateProductUsecase().execute({...context, 'data': data});
  }
}
