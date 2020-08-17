import 'package:flutter/material.dart';
import 'package:mediumcart/screens/home/home.dart';
import 'package:mediumcart/services/data.dart';

class ProductCard extends StatefulWidget {
  final ProductCardType card;

  ProductCard({this.card});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: contentPadding / 2,
      width: MediaQuery.of(context).size.width * .75,
      height: MediaQuery.of(context).size.width * .8,
      child: Column(
        children: [
          Image(
            image: NetworkImage("https://i.imgur.com/sqxCUvj.png"),
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
