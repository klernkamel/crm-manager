import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Person extends Equatable {
  final String name;
  final String email;
  final String phone;
  final String date;
  final String adress;
  final Color color;

  const Person({
    required this.color,
    required this.name,
    required this.date,
    required this.email,
    required this.phone,
    required this.adress,
  });
  
  Person copyWith({
    Color? color,
    String? name,
    String? date,
    String? email,
    String? phone,
    String? adress,
  }) {
    return Person(color: color ?? this.color,name: name ?? this.name, date: date ?? this.date, email: email ?? this.email,phone: phone ?? this.phone, adress: adress ?? this.adress);
  }
  
  @override
  List<Object?> get props => [
    color,
    name,
    date,
    email,
    phone,
    adress,
  ];
}