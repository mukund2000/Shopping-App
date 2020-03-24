import 'package:flutter/material.dart';
import 'package:shop_app_firebase/widgets/products_item.dart';
import '../models/product.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: "P1",
      title: "Pen",
      description: "this is my favourite pen",
      price: 25.99,
      productUrl:
          "https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg",
    ),
    Product(
      id: "P2",
      title: "Book",
      description: "this is my favourite book",
      price: 25.99,
      productUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg",
    ),
    Product(
      id: "P3",
      title: "Laptop",
      description: "this is my favourite laptop",
      price: 25.99,
      productUrl:
          "https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg",
    ),
    Product(
      id: "P4",
      title: "jeans",
      description: "this is my favourite jeans",
      price: 25.99,
      productUrl:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
          itemCount: loadedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (ctx, i) => ProductItem(loadedProducts[i].id,
          loadedProducts[i].productUrl,
              loadedProducts[i].title, )),
    );
  }
}
