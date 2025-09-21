// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Product {
  final String name;
  final String price;
  final String image;
  var colorbackround;

  Product({
    required this.colorbackround,
    required this.name,
    required this.price,
    required this.image,
  });
}

List<Product> productlist = [
  Product(
    colorbackround: const Color.fromARGB(255, 156, 204, 244),
    name: 'Air jordan blue',
    price: ' \$89.75',
    image: 'assets/images/blue2.png',
  ),
  Product(
    colorbackround: const Color.fromARGB(255, 233, 230, 230),

    name: 'Air jordan white ',
    price: '\$54.72',
    image: 'assets/images/white1.png',
  ),
  Product(
    colorbackround: const Color.fromARGB(255, 242, 177, 177),

    name: 'Air jordan black',
    price: '\$102.52',
    image: 'assets/images/black1.png',
  ),
  Product(
    colorbackround: const Color.fromARGB(255, 236, 228, 160),

    name: 'Air jordan yellow',
    price: '\$150.42',
    image: 'assets/images/yellow2.png',
  ),
  Product(
    colorbackround: const Color.fromARGB(255, 250, 214, 160),

    name: 'Air jordan orange',
    price: '\$120.58',
    image: 'assets/images/orange1.png',
  ),
];
