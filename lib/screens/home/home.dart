import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediumcart/screens/home/section.dart';
import 'package:mediumcart/services/data.dart';
import 'package:mediumcart/services/theme.dart';
import 'package:mediumcart/screens/home/productCard.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:outline_material_icons/outline_material_icons.dart';

const EdgeInsetsGeometry contentPadding = EdgeInsets.symmetric(horizontal: 20);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Text("Hellow"),
      ),
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
            Container(
              child: HomeSection(
                heading: "Newest offer",
                expandAction: () {
                  print("Expand");
                },
                items: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ProductCard(
                      card: ProductCardType(
                        id: "hello",
                        name: "Apple Smartwatch Series 1 42 mili 42MM",
                        originalPrice: 1299,
                        discountPrice: 299,
                        images: [],
                        manufacturer: "Apple INC",
                        about:
                            "Brand new factory sealed in retail box Series 1 Apple watch. work with iPhone 5 or later, not compatible with Android phone",
                        starRating: 4.5,
                        reviews: [],
                      ),
                    ),
                    ProductCard(
                      card: ProductCardType(
                        id: "hello",
                        name: "Apple Smartwatch Series 1 42 mili 42MM",
                        originalPrice: 1299,
                        discountPrice: 299,
                        images: [],
                        manufacturer: "Apple INC",
                        about:
                            "Brand new factory sealed in retail box Series 1 Apple watch. work with iPhone 5 or later, not compatible with Android phone",
                        starRating: 4.5,
                        reviews: [],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
