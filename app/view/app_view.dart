import 'dart:io';
import 'customer/create_customer_view.dart';
import 'customer/delete_customer_view.dart';
import 'customer/find_by_id_view.dart';
import 'customer/get_all_customers_view.dart';
import 'customer/update_customer_view.dart';
import 'view.dart';

class AppView extends View {
  @override
  render(Map<String, dynamic> context) {
    var option = -1;
    Stdin terminal = context['terminal'];
    while (option != 3) {
      showOptions();
      option = int.parse(terminal.readLineSync() ?? "0");
      switch (option) {
        case 1:
          while (option != 6) {
            menu();
            option = int.parse(terminal.readLineSync() ?? '0');
            executeCustomerOptions(option, context);
          }
          break;
        case 2:
          while (option != 6) {
            menu();
            option = int.parse(terminal.readLineSync() ?? '0');
            executeProductOptions(option, context);
          }
          break;
        case 3:
          break;
        default:
          break;
      }
    }
  }

  showOptions() {
    print('\n##########################');
    print('C O N T A T O A P P');
    print('##########################\n');
    print('1 - Clientes');
    print('2 - Produtos');
    print('3 - Sair');
  }

  menu() {
    print('\n1 - Listar Clientes');
    print('2 - Criar Novo Cliente');
    print('3 - Pesquisar Cliente por ID');
    print('4 - Remover um Cliente');
    print('5 - Atualizar um Cliente');
    print('6 - Sair');
  }

  executeCustomerOptions(int option, context) {
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
        UpdateCustomerView().render(context);
        break;
      case 6:
        break;
      default:
        print('Opção Inválida');
    }
  }

  executeProductOptions(int option, context) {
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
        UpdateCustomerView().render(context);
        break;
      case 6:
        break;
      default:
        print('Opção Inválida');
    }
  }
}
