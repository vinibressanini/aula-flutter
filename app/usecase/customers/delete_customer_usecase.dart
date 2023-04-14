import '../../domain/customer/customer_service.dart';

class DeleteCustomerUsecase {
  execute(Map<String, dynamic> context) {
    CustomerService service = context['contactService'];

    service.deleteCustomer(context['id']);
  }
}
