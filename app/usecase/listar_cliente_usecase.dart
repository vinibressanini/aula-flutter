import '../domain/customer/customer.dart';
import '../domain/customer/customer_service.dart';

class ListarClientesUsecase {
  execute(Map<String, dynamic> context) {
    ClienteService service = context['contactService'];

    List<Customer> clientes = service.getAllCustomers;

    return clientes;
  }
}
