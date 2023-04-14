import 'view.dart';
import '../domain/customer/customer.dart';
import '../domain/customer/customer_service.dart';

class ListarClientesView extends View {
  @override
  render(Map<String, dynamic> context) {
    ClienteService service = context['contactService'];
    List<Customer> clientes = service.getAllCustomers;
    for (Customer cliente in clientes) {
      print("\n\n${cliente.id} - ${cliente.name} - ${cliente.cpf}");
    }
  }
}
