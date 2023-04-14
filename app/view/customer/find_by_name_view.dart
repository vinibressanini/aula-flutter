import '../../domain/customer/customer.dart';
import '../../usecase/customers/find_customer_by_name_usecase.dart';
import '../view.dart';

import 'dart:io';

class FindByIdView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print("Informe o nome que deseja buscar:");
    String name = terminal.readLineSync() ?? '';

    Customer client =
        FindCustomerByIdUsecase().execute({...context, 'data': name});

    print(client.toString());
  }
}
