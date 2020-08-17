import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediumcart/screens/home/productCard.dart';
import 'package:mediumcart/screens/home/section.dart';
import 'package:mediumcart/services/bloc.dart';
import 'package:mediumcart/services/theme.dart';

const EdgeInsetsGeometry contentPadding = EdgeInsets.symmetric(horizontal: 20);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LightTheme.backgroundGradient,
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.more_horiz,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.add_shopping_cart,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 8),
                child: Container(
                  padding: contentPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shop",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          "Get cheapest goods for your everyday use",
                          style: GoogleFonts.workSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: LightTheme.borderColor,
                              width: 2,
                            ),
                          ),
                        ),
                        margin: EdgeInsets.symmetric(vertical: 15),
                        padding: EdgeInsets.only(bottom: 8),
                        child: TextField(
                          autocorrect: true,
                          autofillHints: ["Hello", "World", "Hey!"],
                          textInputAction: TextInputAction.search,
                          cursorColor: Colors.black,
                          style: GoogleFonts.workSans(fontSize: 18),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Theme.of(context).iconTheme.color,
                            ),
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            hintStyle: GoogleFonts.workSans(fontSize: 18),
                            hintText: "Search for goods",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              HomeSection(
                heading: "Newest offer",
                expandAction: () {
                  print("Expand");
                },
                stream: Data.newestOffer,
                builder: (context, snapshot) {
                  return Row(
                    children: snapshot.data.map<Widget>((dynamic product) {
                      return ProductCard(card: product);
                    }).toList(),
                  );
                },
              ),
              HomeSection(
                heading: "By Categories",
                expandAction: () {
                  print("Expand");
                },
                stream: Data.newestOffer,
                builder: (context, snapshot) {
                  return Row(
                    children: snapshot.data.map<Widget>((dynamic product) {
                      return ProductCard(card: product);
                    }).toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
