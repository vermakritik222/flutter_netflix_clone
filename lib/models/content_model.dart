import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Content {
  final String name;
  final String imageUrl;
  final String titleImageUrl;
  final String videoUrl;
  final String description;
  final Color color;

//  required mene lgaya hai
  const Content({
    required this.name,
    required this.imageUrl,
    this.titleImageUrl = "null",
    this.videoUrl = "null",
    this.description = "null",
    this.color = Colors.white,
  });
}
