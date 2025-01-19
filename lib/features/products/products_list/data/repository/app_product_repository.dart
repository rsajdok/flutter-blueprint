import 'package:flutter_blueprint/features/products/products_list/data/repository/network_product_repository.dart';
import 'package:flutter_blueprint/features/products/products_list/domain/model/product.dart';
import 'package:flutter_blueprint/features/products/products_list/domain/repository/product_repository.dart';

class AppProductRepository implements ProductRepository {
  AppProductRepository({
    required NetworkProductRepository remoteDataSource,
    // required LocalProductRepository localDataSource,
  }) : _remoteDataSource = remoteDataSource;
  // _localDataSource = localDataSource;

  final NetworkProductRepository _remoteDataSource;
  // final LocalProductRepository _localDataSource;

  @override
  Future<List<Product>> fetchProductsList() async {
    return _remoteDataSource.fetchProductsList();
    /*
    final localProducts = await _localDataSource.fetchProducts();

    // Check if local data source has data
    if (localProducts.isNotEmpty) {
      return localProducts;
    } else {
      // If local data source is empty, fetch from API and cache it locally
      final apiProducts = await _remoteDataSource.fetchProducts();
      await _localDataSource.cacheProducts(apiProducts);
      return apiProducts;
    }
    */
  }
}
