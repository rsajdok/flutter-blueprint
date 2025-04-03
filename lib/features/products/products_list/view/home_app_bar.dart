import 'package:flutter/material.dart';
import 'package:flutter_blueprint/app_router.dart';
import 'package:flutter_blueprint/common_widgets/action_text_button.dart';
import 'package:flutter_blueprint/constants/breakpoints.dart';
import 'package:flutter_blueprint/features/products/products_list/view/more_menu_button.dart';
import 'package:flutter_blueprint/localization/string_hardcoded.dart';
import 'package:go_router/go_router.dart';

/// Custom [AppBar] widget that is reused by the [ProductsListScreen] and
/// [ProductScreen].
/// It shows the following actions, depending on the application state:
/// - [ShoppingCartIcon]
/// - Orders button
/// - Account or Sign-in button
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // final user = ref.watch(authStateChangesProvider).value;
    // * This widget is responsive.
    // * On large screen sizes, it shows all the actions in the app bar.
    // * On small screen sizes, it shows only the shopping cart icon and a
    // * [MoreMenuButton].
    // ! MediaQuery is used on the assumption that the widget takes up the full
    // ! width of the screen. If that's not the case, LayoutBuilder should be
    // ! used instead.
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < Breakpoint.tablet) {
      return AppBar(
        title: Text('My Shop'.hardcoded),
        actions: [
          // const ShoppingCartIcon(),
          MoreMenuButton(), // user: user),
        ],
      );
    } else {
      return AppBar(
        title: Text('My Shop'.hardcoded),
        actions: [
          // const ShoppingCartIcon(),
          if (true) ...[
            //user != null) ...[
            ActionTextButton(
                key: MoreMenuButton.ordersKey,
                text: 'Orders'.hardcoded,
                onPressed: () => {} // context.goNamed(AppRouter.orders.name),
                ),
            ActionTextButton(
                key: MoreMenuButton.accountKey,
                text: 'Account'.hardcoded,
                onPressed: () => {} // context.goNamed(AppRouter.account.name),
                ),
          ] else
            ActionTextButton(
                key: MoreMenuButton.signInKey,
                text: 'Sign In'.hardcoded,
                onPressed: () => {} // context.goNamed(AppRouter.signIn.name),
                ),
        ],
      );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
