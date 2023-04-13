import 'dart:io';
import 'view.dart';
import '../domain/cliente.dart';
import '../domain/cliente_service.dart';

class ListarClientesView extends View {

    @override
    render(Map<String, dynamic> context) {
        ClienteService service = context['contactService'];
        List<Cliente> clientes = service.listarClientes;
        for (Cliente cliente in clientes) {
            print("\n\n${cliente.id} - ${cliente.name} - ${cliente.cpf}");
        }
    }

}