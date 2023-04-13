import 'dart:io';
import 'dart:core';
import '../usecase/create_cliente_usecase.dart';
import 'view.dart';

class CreateClientView extends View {

    @override
    render (Map<String, dynamic> context) {
        Stdin terminal = context['terminal'];

        print('##########################');
        print('N O V O   C O N T A T O');
        print('##########################');
        print('');

        print('Digite o nome do cliente');
        String nome = terminal.readLineSync() ?? "";

        if (nome.length < 3) {
            print("\nNome invalido");
            return;
        }

        print('Digite o cpf do cliente')  ;
        String cpf = terminal.readLineSync() ?? "";

         if (cpf.length != 11) {
            print("\n CPF invalido");
            return;
        }

        print('Digite o logradouro do cliente');
        String logradouro = terminal.readLineSync() ?? "";
        
        print('Digite o numero do cliente');
        String numero = terminal.readLineSync() ?? '0';

        print('Digite o complemento do cliente');
        String complemento = terminal.readLineSync() ?? "";

        print('Digite o bairro do cliente');
        String bairro = terminal.readLineSync() ?? "";

        print('Digite o cidade logradouro do cliente');
        String cidade = terminal.readLineSync() ?? "";

        print('Digite o cep do cliente');
        String cep = terminal.readLineSync() ?? '0';

        Map<String, dynamic> data = 
        {
            "name" : nome,
            "cpf" : cpf,
            "logradouro" : logradouro,
            "numero" : numero,
            "complemento" : complemento,
            "bairro" : bairro,
            "cidade" : cidade,
            "cep" : cep    
        };

        CreateClienteUsecase().execute({...context, 'data' : data});
    }
}