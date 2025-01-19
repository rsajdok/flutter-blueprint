import 'package:flutter_blueprint/features/products/products_list/data/repository/app_product_repository.dart';
import 'package:flutter_blueprint/features/products/products_list/data/repository/network_product_repository.dart';
import 'package:flutter_blueprint/features/products/products_list/data/service/fake_api_service.dart';
import 'package:flutter_blueprint/features/products/products_list/domain/repository/product_repository.dart';
import 'package:flutter_blueprint/features/products/products_list/domain/use_cases/fetch_products_use_case.dart';
import 'package:get_it/get_it.dart';

Future<void> setupDependencies() async {
  final getIt = GetIt.instance;
  // getIt.registerLazySingleton<CartRepository>(() => InMemoryCartRepository());
  getIt.registerLazySingleton<FakeApiService>(() => FakeApiService());
  getIt.registerLazySingleton<NetworkProductRepository>(
    () => NetworkProductRepository(getIt()),
  );
  getIt.registerLazySingleton<ProductRepository>(
    () => AppProductRepository(
      remoteDataSource: getIt(),
    ),
  );
  getIt.registerLazySingleton(
    () => FetchProductsUseCase(
      getIt(),
    ),
  );
  /*
  getIt.registerSingletonAsync<ProductRepository>(
    () async {
      final hiveService = HiveService();
      final apiService = ApiService();
      await hiveService.initializeHive();
      return AppProductRepository(
        remoteDataSource: NetworkProductRepository(apiService),
        localDataSource: LocalProductRepository(
          hiveService.getProductBox(),
        ),
      );
    },
  );
  */
  await getIt.allReady();
}
