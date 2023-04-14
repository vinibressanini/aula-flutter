import 'customer.dart';

class CustomerService {
  List<Customer> customers = [];

  void addCustomer(Customer customer) {
    if (customers.isEmpty) {
      customer.id = 1;
      customers.add(customer);
    } else {
      customer.id = customers.last.id + 1;
      customers.add(customer);
    }
  }

  get getAllCustomers => customers;

  Customer getById(int id) {
    return customers.firstWhere((c) => c.id == id);
  }

  void deleteCustomer(int id) {
    customers.removeWhere((customer) => customer.id == id);
  }
}
