import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

typedef ProductID = String;

@freezed
class Product with _$Product {
  factory Product({
    required int id,
    required String imageUrl,
    required String title,
    required String description,
    required int price,
    required int availableQuantity,
    required int avgRating,
    required int numRatings,
  }) = _Product;
}
