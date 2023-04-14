import 'customer.dart';

class ClienteService {
  List<Customer> customers = [];

  void addCustomer(Customer customer) {
    customers.add(customer);
  }

  get getAllCustomers => customers;

  Customer getByName(String name) {
    return customers
        .firstWhere((c) => c.name.toLowerCase() == name.toLowerCase());
  }
}
