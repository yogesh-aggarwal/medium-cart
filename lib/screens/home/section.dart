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
            padding: EdgeInsets.only(bottom: 5),
            child: Container(
              padding: contentPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.heading.toUpperCase(),
                    style: GoogleFonts.workSans(
                      color: Color(0xFF011738),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  MaterialButton(
                    onPressed: widget.expandAction,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 5),
                          child: Text(
                            "View All",
                            style: GoogleFonts.workSans(
                              color: Color(0xFF011738),
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
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
