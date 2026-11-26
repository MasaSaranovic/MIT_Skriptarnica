import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skriptarnicaftn/providers/wishlist_provider.dart';
import 'package:skriptarnicaftn/services/assets_manager.dart';
import 'package:skriptarnicaftn/services/my_app_functions.dart';
import 'package:skriptarnicaftn/widgets/empty_bag.dart';
import 'package:skriptarnicaftn/widgets/products/product_widget.dart';
import 'package:skriptarnicaftn/widgets/title_text.dart';

class WishlistScreen extends StatelessWidget {
  static const routName = "/WishlistScreen";
  const WishlistScreen({super.key});
  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    final wishlistProvider = Provider.of<WishlistProvider>(context);
    return wishlistProvider.getWishlists.isEmpty
        ? Scaffold(
            body: EmptyBagWidget(
              imagePath: "${AssetsManager.imagePath}/bag/wishlist.png",
              title: "Nothing in ur wishlist yet",
              subtitle: "Looks like your cart is empty.",
              buttonText: "Shop now",
            ),
          )
        : Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  "${AssetsManager.imagePath}/bag/wishlist.png",
                ),
              ),
              title: TitlesTextWidget(
                  label: "Wishlist (${wishlistProvider.getWishlists.length})"),
              actions: [
                IconButton(
                  onPressed: () {
                    MyAppFunctions.showErrorOrWarningDialog(
                      isError: false,
                      context: context,
                      subtitle: "Clear wishlist?",
                      fct: () {
                        wishlistProvider.clearLocalWishlist();
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.delete_forever_rounded,
                  ),
                ),
              ],
            ),
            body: DynamicHeightGridView(
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              builder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProductWidget(
                    productId: wishlistProvider.getWishlists.values
                        .toList()[index]
                        .productId,
                  ),
                );
              },
              itemCount: wishlistProvider.getWishlists.length,
              crossAxisCount: 2,
            ),
          );
  }
}
