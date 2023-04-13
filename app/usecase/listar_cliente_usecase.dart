import '../domain/cliente.dart';
import '../domain/cliente_service.dart';

class ListarClientesUsecase {
    execute(Map<String, dynamic> context) {
                
        ClienteService service = context['contactService'];
        
        List<Cliente> clientes = service.listarClientes;
        
        return clientes;
    }
}