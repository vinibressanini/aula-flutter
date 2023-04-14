import '../../domain/customer/customer.dart';
import '../../domain/address/address.dart';
import '../../domain/customer/customer_service.dart';

class CreateCustomerUsecase {
  execute(Map<String, dynamic> context) {
    Map<String, dynamic> data = context['data'];

    String name = data['name'] ?? "";
    String cpf = data['cpf'] ?? "";
    String street = data['street'] ?? "";
    String complement = data['complement'] ?? "";
    String neighborhood = data['neighborhood'] ?? "";
    String city = data['city'] ?? "";
    int cep = int.parse(data['cep'] ?? '0');
    int number = int.parse(data['number'] ?? '0');
    int id = DateTime.now().millisecondsSinceEpoch;

    CustomerService service = context['contactService'];

    service.addCustomer(
      Customer(
        id: id,
        name: name,
        cpf: cpf,
        address: Address(
          cep: cep,
          street: street,
          complement: complement,
          neighborhood: neighborhood,
          number: number,
          city: city,
        ),
      ),
    );
  }
}
