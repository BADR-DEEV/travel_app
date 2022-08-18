import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController _searchControl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: TextField(
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.blueGrey[300],
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          hintText: "مثال : ليبيا، طرابلس",

          hintTextDirection: TextDirection.rtl,

          // textStyle: TextStyle(
          //   fontWeight: FontWeight.w400,
          //   fontSize: 14.0,
          //   color: Colors.blueGrey[300],
          // ),

          prefixIcon: Icon(
            Icons.location_on,
            color: Colors.blueGrey[300],
          ),
          hintStyle: GoogleFonts.changa(
            textStyle: TextStyle(fontSize: 15.0, color: Colors.blueGrey[300]),
          ),
        ),
        maxLines: 1,
        controller: _searchControl,
      ),
    );
  }
}
