import 'package:flutter_blueprint/features/products/products_list/domain/model/product.dart';
import 'package:flutter_blueprint/features/products/products_list/domain/repository/product_repository.dart';

class FetchProductsUseCase {
  FetchProductsUseCase(
    this._productRepository,
  );

  final ProductRepository _productRepository;

  Future<List<Product>> fetchProducts() {
    return _productRepository.fetchProductsList();
  }
}
