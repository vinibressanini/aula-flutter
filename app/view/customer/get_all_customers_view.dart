import '../../domain/customer/customer.dart';
import '../../domain/customer/customer_service.dart';
import '../view.dart';

class GetAllCustomersView extends View {
  @override
  render(Map<String, dynamic> context) {
    CustomerService service = context['contactService'];
    List<Customer> customers = service.getAllCustomers;
    for (Customer customer in customers) {
      print("\n\n ${customer.toString()}");
    }
  }
}
