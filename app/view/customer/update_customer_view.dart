import 'dart:io';

import '../../domain/customer/customer.dart';
import '../../usecase/customers/find_customer_by_id_usecase.dart';
import '../../usecase/customers/update_customer_usecase.dart';
import '../view.dart';

class UpdateCustomerView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print("\nInforme o ID do cliente que deseja atualizar");

    int? id = int.tryParse(terminal.readLineSync() ?? '0');

    if (id == null || id < 1) {
      print("ID inválido. Por favor informe um número positivo");
      return;
    }

    Customer? customer =
        FindCustomerByIdUsecase().execute({...context, 'data': id});

    if (customer == null) {
      print("Usuário não encontrado. Informe um ID válido");
      return;
    }

    print('\nDigite o nome do cliente');
    String name = terminal.readLineSync() ?? "";

    if (name.length < 3) {
      print("\nNome invalido");
      return;
    }

    print('\nDigite o cpf do cliente');
    String cpf = terminal.readLineSync() ?? "";

    if (cpf.length != 11) {
      print("\nCPF invalido");
      return;
    }

    print('\nDigite o logradouro da casa do cliente');
    String street = terminal.readLineSync() ?? "";

    print('\nDigite o numero da casa do cliente');
    String number = terminal.readLineSync() ?? '0';

    print('\nDigite o complemento da casa do cliente');
    String complement = terminal.readLineSync() ?? "";

    print('\nDigite o bairro do cliente');
    String neighborhood = terminal.readLineSync() ?? "";

    print('\nDigite o cidade do cliente');
    String city = terminal.readLineSync() ?? "";

    print('\nDigite o cep do cliente');
    String cep = terminal.readLineSync() ?? '0';

    Map<String, dynamic> data = {
      "id": id,
      "name": name,
      "cpf": cpf,
      "street": street,
      "number": number,
      "complement": complement,
      "neighborhood": neighborhood,
      "city": city,
      "cep": cep
    };

    UpdateCustomerUsecase().execute({...context, 'data': data});
  }
}
