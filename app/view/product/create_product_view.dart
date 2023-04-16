import 'dart:io';
import 'dart:core';

import '../../usecase/products/create_product_usecase.dart';
import '../view.dart';

class CreateProductView extends View {
  @override
  render(Map<String, dynamic> context) {
    Stdin terminal = context['terminal'];

    print('##########################');
    print('N O V O   P R O D U T O');
    print('##########################');
    print('');

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
      "name": name,
      "value": value,
      "description": description,
    };

    CreateProductUsecase().execute({...context, 'data': data});
  }
}
