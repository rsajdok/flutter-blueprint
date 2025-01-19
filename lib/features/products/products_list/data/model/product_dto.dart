import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_dto.freezed.dart';

@freezed
class ProductDto with _$ProductDto {
  factory ProductDto({
    required int id,
    required String imageUrl,
    required String title,
    required String description,
    required int price,
    required int availableQuantity,
    required int avgRating,
    required int numRatings,
  }) = _ProductDto;
}
