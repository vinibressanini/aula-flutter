import '../domain/cliente.dart';
import '../domain/cliente_service.dart';

class FindClientByNameUsecase {
    execute(Map<String, dynamic> context) {
                
        ClienteService service = context['contactService'];
        
        Cliente cliente = service.getByName(context['data']);
        
        return cliente;
    
    }
}