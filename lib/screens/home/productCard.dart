import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediumcart/screens/home/home.dart';
import 'package:mediumcart/services/data.dart';
import 'package:mediumcart/services/theme.dart';

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
      width: MediaQuery.of(context).size.width * .65,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Image(
              image: NetworkImage("https://i.imgur.com/sqxCUvj.png"),
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.width * .45,
              width: MediaQuery.of(context).size.width * .75,
            ),
          ),
          Text(
            widget.card.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.workSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Text(
                  "Now only ",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.workSans(
                    color: LightTheme.productPriceColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "\$${widget.card.discountPrice}",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.workSans(
                    color: LightTheme.productPriceColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3),
            child: Text(
              "\$${widget.card.discountPrice}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.workSans(
                color: LightTheme.disabledTextColor,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.lineThrough,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
