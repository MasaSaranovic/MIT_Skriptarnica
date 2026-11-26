import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skriptarnicaftn/providers/cart_provider.dart';
import 'package:skriptarnicaftn/providers/products_provider.dart';
import 'package:skriptarnicaftn/providers/viewed_recently_provider.dart';
import 'package:skriptarnicaftn/providers/wishlist_provider.dart';
import 'package:skriptarnicaftn/screens/auth/forgot_password.dart';
import 'package:skriptarnicaftn/screens/auth/login.dart';
import 'package:skriptarnicaftn/screens/auth/register.dart';
import 'package:skriptarnicaftn/screens/inner_screen/orders/orders_screen.dart';
import 'package:skriptarnicaftn/screens/inner_screen/product_details.dart';
import 'package:skriptarnicaftn/screens/inner_screen/view_recently.dart';
import 'package:skriptarnicaftn/screens/inner_screen/wishlist.dart';
import 'package:skriptarnicaftn/screens/root_screen.dart';
import 'package:skriptarnicaftn/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProductsProvider(),
        ),
        ChangeNotifierProvider(create: (_) {
          return CartProvider();
        }),
        ChangeNotifierProvider(create: (_) {
          return WishlistProvider();
        }),
        ChangeNotifierProvider(create: (_) {
          return ViewedProdProvider();
        }),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FTN Skriptarnica',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoginScreen(),
        routes: {
          ProductDetailsScreen.routName: (context) =>
              const ProductDetailsScreen(),
          WishlistScreen.routName: (context) => const WishlistScreen(),
          ViewedRecentlyScreen.routName: (context) =>
              const ViewedRecentlyScreen(),
          RegisterScreen.routName: (context) => const RegisterScreen(),
          RootScreen.routeName: (context) => const RootScreen(),
          LoginScreen.routeName: (context) => const LoginScreen(),
          OrdersScreen.routeName: (context) => const OrdersScreen(),
          ForgotPasswordScreen.routeName: (context) =>
              const ForgotPasswordScreen(),
          SearchScreen.routName: (context) => const SearchScreen()
        },
      ),
    );
  }
}
