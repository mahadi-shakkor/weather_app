import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/WeatherForecastScroller.dart';
import 'package:weather_app/widgets/custom_bg.dart';

import 'WeatherCard.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return custom_bg(
      mainChild: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "North America",
              style: GoogleFonts.poppins(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Max: 24 ° Min:18°",
              style: GoogleFonts.poppins(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 30),
            // Wrap your Align widget with a Padding widget
            Padding(
              padding: const EdgeInsets.only(left: 40.0), // Adds 20 pixels of
              // space on the left
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "7-Days Forecasts",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            WeatherForecastScroller(),

          ],
        ),
      ),
    );
  }
}
