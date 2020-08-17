import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mediumcart/screens/home/screen.dart';
import 'package:rxdart/rxdart.dart';

class HomeSection extends StatefulWidget {
  final String heading;
  final Function expandAction;
  final Subject stream;
  final Function builder;

  HomeSection({
    @required this.heading,
    @required this.expandAction,
    @required this.stream,
    @required this.builder,
  });

  @override
  _HomeSectionState createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
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
            child: StreamBuilder(
              stream: widget.stream,
              initialData: [],
              builder: widget.builder,
            ),
          ),
        ],
      ),
    );
  }
}
