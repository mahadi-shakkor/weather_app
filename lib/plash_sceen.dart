import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/todays_weather.dart';
import 'package:weather_app/widgets/custom_bg.dart';

class splash_sceen extends StatelessWidget {
  const splash_sceen({super.key});

  @override
  Widget build(BuildContext context) {
    return custom_bg(
      mainChild: Column(
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/s3.png')),
            ),
          ),
          SizedBox(height: 50),
          Text(
            "weather",
            style: GoogleFonts.poppins(
              fontSize: 64,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "forcast",
            style: GoogleFonts.poppins(
              fontSize: 64,
              color: Color(0xFFDDB130),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Todays_weather()),
              );
            },
            child: Container(
              width: 300,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFDDB130),
              ),
              child: Center(
                child: Text(
                  'get start',
                  style: GoogleFonts.openSans(
                    fontSize: 28,
                    color: Color(0xFF362A84),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}
