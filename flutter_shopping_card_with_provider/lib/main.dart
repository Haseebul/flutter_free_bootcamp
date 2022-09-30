import 'package:flutter/material.dart';
import 'package:flutter_shopping_card_with_provider/cart_provider.dart';
import 'package:flutter_shopping_card_with_provider/product_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: Builder(
        builder: (BuildContext context) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const ProductListScreen(),
          );
        },
      ),
    );
  }
}
