import 'dart:async';

import 'package:flutter_blueprint/core/delay.dart';
import 'package:flutter_blueprint/core/in_memory_store.dart';
import 'package:flutter_blueprint/features/products/products_list/data/model/product_dto.dart';
import 'package:flutter_blueprint/features/products/products_list/data/service/test_products.dart';
import 'package:flutter_blueprint/features/products/products_list/domain/model/product.dart';

class FakeApiService {
  FakeApiService({
    this.addDelay = true,
  });

  final bool addDelay;

  /// Preload with the default list of products when the app starts
  final _products = InMemoryStore<List<ProductDto>>(List.from(kTestProductsBl));

  /// Get a product by ID.
  /// This method is only used by some of the "fake" services in the app.
  /// In real-world apps, remote data can only be obtained asynchronously.
  ProductDto? getProduct(String id) {
    return _getProduct(_products.value, id);
  }

  // Retrieve the products list as a [Future] (one-time read)
  Future<List<Product>> fetchProductsList() async {
    return Future.value(
      _products.value
          .map(
            (product) => Product(
              id: product.id,
              imageUrl: product.imageUrl,
              title: product.title,
              description: product.description,
              price: product.price,
              availableQuantity: product.availableQuantity,
              avgRating: product.avgRating,
              numRatings: product.numRatings,
            ),
          )
          .toList(),
    );
  }

  // Retrieve the products list as a [Stream] (for realtime updates)
  /*
  @override
  Stream<List<ProductBl>> watchProductsList() {
    return _products.stream;
  }
  */

  // Retrieve a specific product by ID
  /*
  @override
  Stream<ProductBl?> watchProduct(int id) {
    return watchProductsList()
        .map((products) => _getProduct(products, id.toString()));
  }
  */

  /// Update product or add a new one
  Future<void> setProduct(Product product) async {
    await delay(addDelay);
    final products = _products.value;
    final index = products.indexWhere((p) => p.id == product.id);
    if (index == -1) {
      // if not found, add as a new product
      products.add(
        ProductDto(
          id: product.id,
          imageUrl: product.imageUrl,
          title: product.title,
          description: product.description,
          price: product.price,
          availableQuantity: product.availableQuantity,
          avgRating: product.avgRating,
          numRatings: product.numRatings,
        ),
      );
    } else {
      // else, overwrite previous product
      products[index] = ProductDto(
        id: product.id,
        imageUrl: product.imageUrl,
        title: product.title,
        description: product.description,
        price: product.price,
        availableQuantity: product.availableQuantity,
        avgRating: product.avgRating,
        numRatings: product.numRatings,
      );
    }
    _products.value = products;
  }

  /// Search for products where the title contains the search query
  /*
  @override
  Future<List<ProductBl>> searchProducts(String query) async {
    assert(
      _products.value.length <= 100,
      'Client-side search should only be performed if the number of products is small. '
      'Consider doing server-side search for larger datasets.',
    );
    // Get all products
    final productsList = await fetchProductsList();
    // Match all products where the title contains the query
    return productsList
        .where((product) =>
            product.title.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }
  */

  static ProductDto? _getProduct(List<ProductDto> products, String id) {
    // * This can also be implemented with [firstWhereOrNull] from this package:
    // * https://api.flutter.dev/flutter/package-collection_collection/IterableExtension/firstWhereOrNull.html
    try {
      return products.firstWhere((product) => product.id.toString() == id);
    } catch (e) {
      return null;
    }
  }
}
