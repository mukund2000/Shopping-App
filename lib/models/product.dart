import 'package:flutter/foundation.dart';

class Product{
  final String id;
  final String title;
  final String description;
  final double price;
  final String productUrl;
  bool isFavourite;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.productUrl,
    this.isFavourite=false,
    });
}