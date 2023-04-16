import 'dart:io';
import 'customer/create_customer_view.dart';
import 'customer/delete_customer_view.dart';
import 'customer/find_customer_by_id_view.dart';
import 'customer/get_all_customers_view.dart';
import 'customer/update_customer_view.dart';
import 'product/create_product_view.dart';
import 'product/delete_product_view.dart';
import 'product/find_product_by_id_view.dart';
import 'product/get_all_products_view.dart';
import 'product/update_product_view.dart';
import 'view.dart';

class AppView extends View {
  @override
  render(Map<String, dynamic> context) {
    var option = -1;
    Stdin terminal = context['terminal'];
    while (option != 3) {
      showOptions();
      int? option = int.tryParse(terminal.readLineSync() ?? "0");
      if (option == null) {
        print("Opção inválida. Informe um número válido");
      }
      switch (option) {
        case 1:
          while (option != 6) {
            menu();
            option = int.tryParse(terminal.readLineSync() ?? "0");
            if (option == null) {
              print("Opção inválida. Informe um número válido");
            } else {
              executeCustomerOptions(option, context);
            }
          }
          break;
        case 2:
          while (option != 6) {
            menu();
            option = int.tryParse(terminal.readLineSync() ?? "0");
            if (option == null) {
              print("Opção inválida. Informe um número válido");
            } else {
              executeProductOptions(option, context);
            }
          }
          break;
        case 3:
          return;
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
    print('\n1 - Listar Todos');
    print('2 - Criar Novo');
    print('3 - Pesquisar por ID');
    print('4 - Remover');
    print('5 - Atualizar');
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
        FindCustomerByIdView().render(context);
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
        GetAllProductsView().render(context);
        break;
      case 2:
        CreateProductView().render(context);
        break;
      case 3:
        FindProductByIdView().render(context);
        break;
      case 4:
        DeleteProductView().render(context);
        break;
      case 5:
        UpdateProductView().render(context);
        break;
      case 6:
        break;
      default:
        print('Opção Inválida');
    }
  }
}
