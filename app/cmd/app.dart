import 'dart:io';

import '../domain/customer/customer_service.dart';
import '../view/view.dart';
import '../view/app_view.dart';

void main() {
  executeApp(AppView());
}

void executeApp(View view) {
  Map<String, dynamic> context = {
    'terminal': stdin,
    'contactService': CustomerService()
  };

  view.render(context);
  exit(0);
}