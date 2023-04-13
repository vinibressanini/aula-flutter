import 'cliente.dart';
import 'package:collection/collection.dart';

class ClienteService {

    List<Cliente> clientes = [];

    void addCLiente (Cliente cliente) {

        clientes.add(cliente);

    }

    get listarClientes => clientes;


    Cliente getByName(String name ) {
        return clientes.firstWhere((c) => c.name == name); 
    }

}