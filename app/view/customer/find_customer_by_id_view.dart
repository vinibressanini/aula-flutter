import '../../domain/customer/customer.dart';
import '../../usecase/customers/find_customer_by_id_usecase.dart';
import '../view.dart';

import 'dart:io';

class FindCustomerByIdView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print("\nInforme o ID do usuário que deseja buscar:");
    int? id = int.tryParse(terminal.readLineSync() ?? '0');

    if (id == null || id < 1) {
      print("\nID inválido. Por favor informe um número positivo");
      return;
    }

    Customer? customer =
        FindCustomerByIdUsecase().execute({...context, 'data': id});

    if (customer == null) {
      print("\nUsuário não encontrado");
    } else {
      print("\n${customer.toString()}");
    }
  }
}
