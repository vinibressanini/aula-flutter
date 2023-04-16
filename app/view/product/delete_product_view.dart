import 'dart:io';

import '../../usecase/products/delete_product_usecase.dart';
import '../view.dart';

class DeleteProductView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print("Informe o ID do produto que deseja remover:");

    int? id = int.tryParse(terminal.readLineSync() ?? '0');

    if (id == null || id < 1) {
      print("ID inválido. Informe um número positivo");
      return;
    }

    DeleteProductUsecase().execute({...context, 'id': id});
  }
}
