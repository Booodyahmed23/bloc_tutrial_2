import 'package:flutter/material.dart';

class Pizza {
  final String id;
  final String name;
  final Image image;

  const Pizza({
    required this.id,
    required this.name,
    required this.image,
  });

  // Proper implementation of hashCode using a getter
  @override
  List<Object?> get props => [id, name, image];

  static List<Pizza> pizzas = [
    Pizza(
      id: '0',
      name: 'Pizza',
      image: Image.asset('assets/images/pizza_ch.jpg'), // Updated asset path
    ),
    Pizza(
      id: '1',
      name: 'Pizza Beef',
      image: Image.asset('assets/images/pizza_beef.jpg'), // Updated asset path
    ),
  ];
}
