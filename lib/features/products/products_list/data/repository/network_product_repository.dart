import 'package:flutter_blueprint/features/products/products_list/data/service/fake_api_service.dart';
import 'package:flutter_blueprint/features/products/products_list/domain/model/product.dart';
import 'package:flutter_blueprint/features/products/products_list/domain/repository/product_repository.dart';

class NetworkProductRepository implements ProductRepository {
  NetworkProductRepository(this._apiService);

  final FakeApiService _apiService;

  @override
  Future<List<Product>> fetchProductsList() {
    return _apiService.fetchProductsList();
  }
}
