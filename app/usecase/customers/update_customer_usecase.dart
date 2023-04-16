import '../../domain/address/address.dart';
import '../../domain/customer/customer.dart';
import '../../domain/customer/customer_service.dart';

class UpdateCustomerUsecase {
  execute(Map<String, dynamic> context) {
    var data = context['data'];
    CustomerService service = context['contactService'];

    Customer customer = Customer(
      id: data['id'],
      name: data['name'],
      cpf: data['cpf'],
      address: Address(
        street: data['street'],
        number: int.parse( data['number']),
        complement: data['complement'],
        neighborhood: data['neighborhood'],
        city: data['city'],
        cep: int.parse(data['cep']),
      ),
    );

    service.updateCustomer(customer);
  }
}
