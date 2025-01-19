import 'package:flutter_blueprint/features/products/products_list/domain/model/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    required ProductsStatus status,
    List<Product>? products,
  }) = _ProductsState;
}

@freezed
class ProductsStatus with _$ProductsStatus {
  const factory ProductsStatus.initial() = _ProductsInitialStatus;
  const factory ProductsStatus.loading() = _ProductsLoadingStatus;
  const factory ProductsStatus.loaded() = _ProductsLoadedStatus;
  const factory ProductsStatus.failure(
//     ApiFailureReason apiFailureReason,
      ) = _ProductsErrorStatus;
}
