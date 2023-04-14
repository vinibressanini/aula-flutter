import '../domain/customer/customer.dart';
import '../domain/address/address.dart';
import '../domain/customer/customer_service.dart';

class CreateClienteUsecase {
  execute(Map<String, dynamic> context) {
    Map<String, dynamic> data = context['data'];

    String name = data['name'] ?? "";
    String cpf = data['cpf'] ?? "";
    String logradouro = data['logradouro'] ?? "";
    String complemento = data['complemento'] ?? "";
    String bairro = data['bairro'] ?? "";
    String cidade = data['cidade'] ?? "";
    int cep = int.parse(data['cep'] ?? '0');
    int numero = int.parse(data['numero'] ?? '0');
    int id = DateTime.now().millisecondsSinceEpoch;

    ClienteService service = context['contactService'];

    service.addCLiente(Customer(id, name, cpf,
        Endereco(logradouro, numero, complemento, bairro, cidade, cep)));
  }
}
