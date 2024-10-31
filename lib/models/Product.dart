import 'package:flutter/material.dart';

import 'package:homejek_app/models/Category.dart';

class Product {
  final int id;
  final String title, description,status;
  //final Category category ;
  final List<String> images;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    //required this.category,
    required this.status,
    required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,



  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/coiffure_homme2.png",


    ],

    title: "Services de Coiffure pour Hommes",
    price: 40.0,
    description: '',
    rating: 4.8,
    status: 'available',
    isFavourite: true,
    isPopular: true,

  ),
  Product(
    id: 2,
    images: [

      "assets/images/model_imgs/onglerie_2/1.png",
      "assets/images/model_imgs/onglerie_2/2.png",
      "assets/images/model_imgs/onglerie_2/3.png",
      "assets/images/model_imgs/onglerie_2/4.png",

    ],

    title: "Ongles & Cils",
    price: 70.0,
    description: '',
    rating: 4.1,
    status: 'available',
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/model_imgs/menage/1.png",
      "assets/images/model_imgs/menage/2.png",
      "assets/images/model_imgs/menage/3.png",


    ],
    status: 'available',
    title: " Service de ménage à domicile",
    price: 45.0,
    description: 'Faites appel à une aide ménagère : \nsolution souple et efficace pour la propreté de votre maison.',
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/livreur.png",
      "assets/images/model_imsg/livraison/2.png",
      "assets/images/model_imsg/livraison/3.png",
    ],
    status: 'available',
    title: "Livreur sur le grand Tunis",
    price: 20.0,
    description: '',
    rating: 4.1,
    isFavourite: true,
  ),
];


