import '../../domain/customer/customer.dart';
import '../../domain/customer/customer_service.dart';

class GetAllCustomersUsecase {
  execute(Map<String, dynamic> context) {
    CustomerService service = context['contactService'];

    List<Customer> customers = service.getAllCustomers;

    return customers;
  }
}
