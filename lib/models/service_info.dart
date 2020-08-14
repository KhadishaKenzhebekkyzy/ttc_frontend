import 'package:flutter/material.dart';

class ServiceInfo{
  final String title;
  final String description;
  final List<String> serviceStructure;

  const ServiceInfo({
    @required this.title,
    @required this.description,
    @required this.serviceStructure
  });
}