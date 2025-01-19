import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blueprint/features/products/products_list/bloc/products_cubit.dart';
import 'package:flutter_blueprint/features/products/products_list/view/sliver_products_grid_bl.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

/// Shows the list of products with a search field at the top.
class ProductsListScreenBl extends StatefulWidget {
  const ProductsListScreenBl({super.key});

  @override
  State<ProductsListScreenBl> createState() => _ProductsListScreenBlState();
}

class _ProductsListScreenBlState extends State<ProductsListScreenBl> {
  // * Use a [ScrollController] to register a listener that dismisses the
  // * on-screen keyboard when the user scrolls.
  // * This is needed because this page has a search field that the user can
  // * type into.
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_dismissOnScreenKeyboard);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_dismissOnScreenKeyboard);
    super.dispose();
  }

  // When the search text field gets the focus, the keyboard appears on mobile.
  // This method is used to dismiss the keyboard when the user scrolls.
  void _dismissOnScreenKeyboard() {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const HomeAppBar(),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          /*
          ResponsiveSliverCenter(
            padding: EdgeInsets.all(Sizes.p16),
            child: ProductsSearchTextField(),
          ),
          */
          BlocProvider(
            create: (context) => ProductsCubit(
              // productsRepository: GetIt.I.get(),
              getProductsUseCase: GetIt.I.get(),
            )..fetchProducts(),
            child: SliverProductsGridBl(
              onPressed: (context, productId) => context.goNamed(
                'AppRoute.product.name,',
                pathParameters: {'id': productId},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
