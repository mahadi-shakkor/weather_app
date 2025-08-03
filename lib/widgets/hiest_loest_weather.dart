import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeightLowestweather extends StatelessWidget {
  final String hightWaether;
  final String time;
  final String  image;
  const   HeightLowestweather({super.key, required this.hightWaether, required this.time, required this.image});

  @override
  Widget build(BuildContext context) {



    return Column(
      children: [
        Text(
          hightWaether,
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          height: 56,
          width: 66,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
            ),
          ),
        ),
        Text(
          time,
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),





      ],
    );
  }
}
