import 'package:flutter/foundation.dart';

class ProductReviewType {
  String uid;
  String userName;
  String content;
  DateTime datePosted;

  ProductReviewType({
    @required this.uid,
    @required this.userName,
    @required this.content,
    @required this.datePosted,
  });
}

class ProductCardType {
  String id;
  String name;
  double originalPrice;
  double discountPrice;
  List<String> images;
  String manufacturer;
  String about;
  double starRating;
  List<ProductReviewType> reviews;

  ProductCardType({
    @required this.id,
    @required this.name,
    @required this.originalPrice,
    @required this.discountPrice,
    @required this.images,
    @required this.manufacturer,
    @required this.about,
    @required this.starRating,
    @required this.reviews,
  });
}
