import 'dart:io';
import 'dart:core';

import '../../usecase/customers/create_customer_usecase.dart';
import '../view.dart';

class CreateCustomerView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('##########################');
    print('N O V O   C O N T A T O');
    print('##########################');
    print('');

    print('\nDigite o nome do cliente');
    String name = terminal.readLineSync() ?? "";

    if (name.length < 3) {
      print("\n\nNome invalido");
      return;
    }

    print('\nDigite o cpf do cliente');
    String cpf = terminal.readLineSync() ?? "";

    if (cpf.length != 11) {
      print("\n\n CPF invalido");
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
      "name": name,
      "cpf": cpf,
      "street": street,
      "number": number,
      "complement": complement,
      "neighborhood": neighborhood,
      "city": city,
      "cep": cep
    };

    CreateCustomerUsecase().execute({...context, 'data': data});
  }
}
