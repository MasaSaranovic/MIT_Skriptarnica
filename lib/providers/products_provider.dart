import 'package:flutter/material.dart';
import 'package:skriptarnicaftn/models/product_model.dart';
import 'package:uuid/uuid.dart';

class ProductsProvider with ChangeNotifier {
  List<ProductModel> get getProducts {
    return products;
  }

  ProductModel? findByProductId(String productId) {
    if (products.where((element) => element.productId == productId).isEmpty) {
      return null;
    }
    return products.firstWhere((element) => element.productId == productId);
  }

  List<ProductModel> findByCategory({required String categoryName}) {
    List<ProductModel> categoryList = products
        .where((element) => element.productCategory
            .toLowerCase()
            .contains(categoryName.toLowerCase()))
        .toList();
    return categoryList;
  }

  List<ProductModel> searchQuery({
    required String searchText,
    required List<ProductModel> passedList,
  }) {
    List<ProductModel> searchList = passedList
        .where((element) => element.productTitle
            .toLowerCase()
            .contains(searchText.toLowerCase()))
        .toList();
    return searchList;
  }

  List<ProductModel> products = [
    // Books
    ProductModel(
      productId: 'UUP',
      productTitle: 'Uvod u programiranje',
      productPrice: '1200.00',
      productCategory: 'Books',
      productDescription: 'Description',
      productImage:
          'https://upload.wikimedia.org/wikipedia/commons/a/ab/Stack_of_Books.jpg',
      productQuantity: '10',
    ),
    ProductModel(
      productId: 'UMPS',
      productTitle: 'Uvod u mikroprocesorske sisteme',
      productPrice: '1200.00',
      productCategory: 'Books',
      productDescription: 'Description',
      productImage:
          'https://upload.wikimedia.org/wikipedia/commons/7/7c/College_Textbooks.jpg',
      productQuantity: '15',
    ),

    // Stationery
    ProductModel(
      productId: const Uuid().v4(),
      productTitle: 'Marker',
      productPrice: '20.00',
      productCategory: 'Stationery',
      productDescription: 'Description',
      productImage:
          'https://upload.wikimedia.org/wikipedia/commons/7/7e/Markeerstift-01_%28xndr%29.jpg',
      productQuantity: '200',
    ),
    ProductModel(
      productId: const Uuid().v4(),
      productTitle: 'Gumica',
      productPrice: '50.00',
      productCategory: 'Stationery',
      productDescription: 'Description',
      productImage:
          'https://upload.wikimedia.org/wikipedia/commons/9/98/Staedtler_Eraser_%2826178306040%29.jpg',
      productQuantity: '300',
    ),

    // Merch
    ProductModel(
      productId: const Uuid().v4(),
      productTitle: 'Majica',
      productPrice: '1000.00',
      productCategory: 'Merch',
      productDescription: 'Description',
      productImage:
          'https://thumb.wikimedia.org/wikipedia/commons/thumb/c/c9/T-shirt_%28drawing%29.jpg/960px-T-shirt_%28drawing%29.jpg?utm_source=commons.wikimedia.org&utm_campaign=imageinfo&utm_content=thumbnail',
      productQuantity: '100',
    ),
    ProductModel(
      productId: const Uuid().v4(),
      productTitle: 'Ceger',
      productPrice: '1200.00',
      productCategory: 'Merch',
      productDescription: 'Description',
      productImage:
          'https://thumb.wikimedia.org/wikipedia/commons/thumb/5/5c/Cloth_bag_Bez_%C3%87anta.jpg/960px-Cloth_bag_Bez_%C3%87anta.jpg?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail&_=20221222110347',
      productQuantity: '100',
    ),
  ];
}
