import 'view.dart';
import '../domain/cliente.dart';
import '../usecase/find_client_by_name_usecase.dart';
import 'dart:io';

class FindByNameView extends View {
    @override
    render(Map<String, dynamic> context) {
        Stdin terminal = context['terminal'];

        print("Informe o nome que deseja buscar:");
        String name =  terminal.readLineSync() ?? '';

        Cliente client = FindClientByNameUsecase().execute({...context, 'data' : name});

        print('${client.id} - ${client.name} - ${client.cpf}');
    }
}