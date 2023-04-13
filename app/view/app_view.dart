import 'dart:io';
import 'create_client_view.dart';
import 'listar_clientes_view.dart';
import 'find_by_name_view.dart';
import 'view.dart';

class AppView extends View {
  @override
  render(Map<String, dynamic> context) {
    var option = -1;
    Stdin terminal = context['terminal'];
    while (option != 4) {
      menu();
      option = int.parse(terminal.readLineSync() ?? "0");
      executeOption(option, context);
    }
  }

  menu() {
    print('##########################');
    print('C O N T A T O    A P P');
    print('##########################');
    print('');
    print('1 - Listar Contatos');
    print('2 - Criar novo Cliente');
    print('3 - Pesquisar contato');
    print('4 - Sair');
  }

  executeOption(int option, context) {
    switch (option) {
      case 1:
        ListarClientesView().render(context);
        break;
      case 2:
        CreateClientView().render(context);
        break;
      case 3:
        FindByNameView().render(context);
        break;
      default:
        print('Opção Inválida');
    }
  }
}