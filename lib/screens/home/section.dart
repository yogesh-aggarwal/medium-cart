import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediumcart/screens/home/home.dart';

class HomeSection extends StatefulWidget {
  final String heading;
  final Function expandAction;
  final Row items;

  HomeSection({
    @required this.heading,
    @required this.expandAction,
    @required this.items,
  });

  @override
  _HomeSectionState createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: contentPadding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.heading.toUpperCase(),
                style: GoogleFonts.workSans(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  RawMaterialButton(
                    onPressed: widget.expandAction,
                    child: Text("View All", style: GoogleFonts.workSans()),
                  ),
                ],
              )
            ],
          ),
        ),
        SingleChildScrollView(
          padding: contentPadding / 2,
          scrollDirection: Axis.horizontal,
          child: widget.items,
        ),
      ],
    );
  }
}
