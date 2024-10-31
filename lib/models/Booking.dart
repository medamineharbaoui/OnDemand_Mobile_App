import 'package:flutter/material.dart';
import 'package:homejek_app/models/Client.dart';
import 'package:homejek_app/models/ServiceProvider.dart';
import 'package:homejek_app/models/Product.dart';

class Booking {
  final int id;
  final Client client;
  final Product product;
  final ServiceProvider service_provider;
  final String date ;
  final String payment_ID;
  final String status ;


  Booking({
    required this.id,
    required this.client,
    required this.product,
    required this.service_provider,
    required this.date,
    required this.payment_ID,
    required this.status,



  });
}