import 'package:flutter/material.dart';

import 'WeatherCard.dart';

class WeatherForecastScroller extends StatefulWidget {
  const WeatherForecastScroller({super.key});

  @override
  State<WeatherForecastScroller> createState() => _WeatherForecastScrollerState();
}

class _WeatherForecastScrollerState extends State<WeatherForecastScroller> {
  final ScrollController _scrollController = ScrollController();

  final List<Map<String, dynamic>> forecastData = [
    {
      "temp": "19°C",
      "day": "Mon",
      "img": "assets/images/s3.png",
      "gradient": [Color(0xFF3E2D8F), Color(0xFF9D52AC).withOpacity(1)],
    },
    {
      "temp": "18°C",
      "day": "Tue",
      "img": "assets/images/s2.png",
      "gradient": [Color(0xFF3E2D8F), Color(0xFF6A7FCB).withOpacity(0.7)],
    },
    {
      "temp": "18°C",
      "day": "Wed",
      "img": "assets/images/s2.png",
      "gradient": [Color(0xFF3E2D8F), Color(0xFF6A7FCB).withOpacity(0.7)],
    },
    {
      "temp": "19°C",
      "day": "Thu",
      "img": "assets/images/s3.png",
      "gradient":[Color(0xFF3E2D8F), Color(0xFF6A7FCB).withOpacity(0.7)],
    },
    {
      "temp": "20°C",
      "day": "Fri",
      "img": "assets/images/s3.png",
      "gradient": [Color(0xFF3E2D8F), Color(0xFF6A7FCB).withOpacity(0.7)],
    },
  ];


  void _scrollLeft() {
    _scrollController.animateTo(
      _scrollController.offset - 100,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  void _scrollRight() {
    _scrollController.animateTo(
      _scrollController.offset + 100,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(


      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Row(
            children: [
              IconButton(
                onPressed: _scrollLeft,
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              ),
              Expanded(

                child: SizedBox(
                  height: 160,

                  child: ListView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: forecastData.length,
                    itemBuilder: (context, index) {
                      final item = forecastData[index];
                      return WeatherCard(
                        temperature: item['temp'],
                        day: item['day'],
                        imagePath: item['img'], gradientColors: item['gradient'],


                      );
                    },
                  ),
                ),
              ),
              IconButton(
                onPressed: _scrollRight,
                icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
