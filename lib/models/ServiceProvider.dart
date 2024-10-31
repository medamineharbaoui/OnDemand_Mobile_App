import 'package:flutter/material.dart';
import 'package:homejek_app/models/Category.dart';

class ServiceProvider {
  final int id;
  final String first_name;
  final String last_name	;
  final String email	;
  final String phone_number	;
  final String username	;
  final String password	;
  final String role	;
  final String cin_recto_image ;
  final String cin_verso_image	;
  final String personal_image	;
  var  status	;
  final Category category ;


  ServiceProvider({
    required this.id,
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.phone_number,
    required this.username,
    required this.password,
    required this.role,
    required this.cin_recto_image,
    required this.cin_verso_image,
    required this.personal_image,
    required this.status ,
    required this.category,


  });
}