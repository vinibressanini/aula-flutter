import 'dart:io';

import '../../usecase/customers/delete_customer_usecase.dart';
import '../view.dart';

class DeleteCustomerView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print("Informe o ID do cliente que deseja remover:");

    int id = int.parse(terminal.readLineSync() ?? '-1');

    if (id < 0) {
      print("ID inválido. Informe um númeor positivo");
      return;
    }

    DeleteCustomerUsecase().execute({...context, 'id': id});
  }
}
