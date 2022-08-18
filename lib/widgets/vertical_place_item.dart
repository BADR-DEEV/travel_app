import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../screens/details.dart';

class VerticalPlaceItem extends StatelessWidget {
  final Map place;

  VerticalPlaceItem({this.place});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: InkWell(
        child: Container(
          height: 90.0,
          width: 90,
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  "${place["img"]}",
                  height: 90.0,
                  width: 70.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 15.0),
              Container(
                height: 80.0,
                width: MediaQuery.of(context).size.width - 130.0,
                child: ListView(
                  primary: false,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "${place["name"]}",
                        style: GoogleFonts.changa(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.right,
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "${place["location"]}",
                            style: GoogleFonts.changa(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 13.0,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            maxLines: 1,
                            textAlign: TextAlign.right,
                          ),
                        ),
                        SizedBox(width: 3.0),
                        Icon(
                          Icons.location_on,
                          size: 13.0,
                          color: Colors.blueGrey[300],
                        ),
                      ],
                    ),
                    // SizedBox(height: 5.0),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "${place["price"]}",
                        style: GoogleFonts.changa(
                          textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        maxLines: 1,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Details();
              },
            ),
          );
        },
      ),
    );
  }
}
