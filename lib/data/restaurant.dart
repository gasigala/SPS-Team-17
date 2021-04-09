import 'package:flutter/material.dart';

class Restaurant {
  final String imageURL;
  final String name;
  final String description;
  final String reviews;
  bool isLiked;
  bool isSwipedOff;

  Restaurant({
    @required this.imageURL,
    @required this.name,
    @required this.description,
    @required this.reviews,
    this.isLiked = false,
    this.isSwipedOff = false,
  });
}
