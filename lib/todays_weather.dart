import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/widgets/custom_bg.dart';
import 'package:weather_app/widgets/hiest_loest_weather.dart';

class Todays_weather extends StatelessWidget {
  const Todays_weather({super.key});

  @override
  Widget build(BuildContext context) {
    String todays_weather = "19°";
    return custom_bg(
      mainChild: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 35),

            Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/s3.png'),
                ),
              ),
            ),
            Text(
              todays_weather,
              style: GoogleFonts.poppins(
                fontSize: 64,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "Participation",
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
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/home.png'),
                ),
              ),
            ),
            SizedBox(height: 20),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF3E2D8F),
                    Color(0xFF9D52AC).withOpacity(.9),
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "July 21",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(color: Color(0xFFF7CBFD)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeightLowestweather(
                        hightWaether: '19°',
                        time: "15:20",
                        image: "assets/images/s3.png",
                      ),
                      HeightLowestweather(
                        hightWaether: '19°',
                        time: "15:20",
                        image: "assets/images/s3.png",
                      ),
                      HeightLowestweather(
                        hightWaether: '19°',
                        time: "15:20",
                        image: "assets/images/s3.png",
                      ),
                      HeightLowestweather(
                        hightWaether: '19°',
                        time: "15:20",
                        image: "assets/images/s3.png",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
