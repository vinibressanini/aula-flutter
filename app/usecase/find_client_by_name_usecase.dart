import '../domain/customer/customer.dart';
import '../domain/customer/customer_service.dart';

class FindClientByNameUsecase {
  execute(Map<String, dynamic> context) {
    ClienteService service = context['contactService'];

    Customer cliente = service.getByName(context['data']);

    return cliente;
  }
}
