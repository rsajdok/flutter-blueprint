import 'package:flutter_blueprint/features/products/products_list/domain/model/product.dart';

abstract class ProductRepository {
  Future<List<Product>> fetchProductsList();

  // Stream<List<ProductBl>> watchProductsList();

  // Stream<ProductBl?> watchProduct(int id);

  // Future<List<ProductBl>> searchProducts(String query);
}
