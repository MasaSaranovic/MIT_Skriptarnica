import 'package:flutter/material.dart';
import 'package:skriptarnicaftn/screens/auth/login.dart';
import 'package:skriptarnicaftn/screens/auth/register.dart';
import 'package:skriptarnicaftn/screens/inner_screen/product_details.dart';
import 'package:skriptarnicaftn/screens/inner_screen/view_recently.dart';
import 'package:skriptarnicaftn/screens/inner_screen/wishlist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      },
    );
  }
}
