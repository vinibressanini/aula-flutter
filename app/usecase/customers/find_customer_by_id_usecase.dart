import '../../domain/customer/customer.dart';
import '../../domain/customer/customer_service.dart';

class FindCustomerByIdUsecase {
  execute(Map<String, dynamic> context) {
    CustomerService service = context['contactService'];

    Customer? customer = service.getById(context['data']);

    return customer;
  }
}
