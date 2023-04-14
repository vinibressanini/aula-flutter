import 'dart:io';
import 'customer/create_customer_view.dart';
import 'customer/delete_customer_view.dart';
import 'customer/find_by_name_view.dart';
import 'customer/get_all_customers_view.dart';
import 'view.dart';

class AppView extends View {
  @override
  render(Map<String, dynamic> context) {
    var option = -1;
    Stdin terminal = context['terminal'];
    while (option != 5) {
      menu();
      option = int.parse(terminal.readLineSync() ?? "0");
      executeOption(option, context);
    }
  }

  menu() {
    print('##########################');
    print(' A P P');
    print('##########################');
    print('');
    print('1 - Listar Clientes');
    print('2 - Criar Novo Cliente');
    print('3 - Pesquisar Cliente por Nome');
    print('4 - Remover um Cliente');
    print('5 - Sair');
  }

  executeOption(int option, context) {
    switch (option) {
      case 1:
        GetAllCustomersView().render(context);
        break;
      case 2:
        CreateCustomerView().render(context);
        break;
      case 3:
        FindByIdView().render(context);
        break;
      case 4:
        DeleteCustomerView().render(context);
        break;
      case 5:
        break;
      default:
        print('Opção Inválida');
    }
  }
}
