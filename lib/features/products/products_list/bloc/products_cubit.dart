import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blueprint/features/products/products_list/bloc/products_state.dart';
import 'package:flutter_blueprint/features/products/products_list/domain/model/product.dart';
import 'package:flutter_blueprint/features/products/products_list/domain/use_cases/fetch_products_use_case.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit({
    //required ProductBlRepository productsRepository,
    required FetchProductsUseCase getProductsUseCase,
  })  : _getProductsUseCase = getProductsUseCase,
        //_productsRepository = productsRepository,
        super(
          const ProductsState(
            status: ProductsStatus.initial(),
          ),
        );

  // final ProductBlRepository _productsRepository;
  final FetchProductsUseCase _getProductsUseCase;

  Future<void> fetchProducts() async {
    try {
      emit(
        state.copyWith(
          status: ProductsStatus.loading(),
        ),
      );
      // final products = await _productsRepository.fetchProductsList();
      final products = await _getProductsUseCase.fetchProducts();
      emit(
        ProductsState(
          status: ProductsStatus.loaded(),
          products: products
              .asMap()
              .entries
              .map(
                (entry) => Product(
                  id: entry.key,
                  imageUrl: entry.value.imageUrl,
                  title: entry.value.title,
                  description: entry.value.description,
                  price: 1,
                  availableQuantity: entry.value.availableQuantity,
                  avgRating: 2,
                  numRatings: 3,
                ),
              )
              .toList(),
        ),
      );
    } catch (exception) {
      emit(
        ProductsState(
          status: ProductsStatus.failure(),
        ),
      );
    }
  }
}
