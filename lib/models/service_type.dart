import 'package:flutter/material.dart';

class ServiceType{
  final String id;
  final String service;
  final String title;
  final String description;
  final String imageUrl;

  const ServiceType({
    @required this.id,
    @required this.service,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
  });
}