import 'produto.dart';

class ProdutoService {

    List<Produto> produtos = [];

    addProduto(Produto produto) {
        produtos.add(produto);
    }

}