// weather_display.dart    not part of ui

import 'package:flutter/material.dart';

class WeatherDisplay extends StatelessWidget {
  final dynamic weatherData;
  final String iconUrl;

  WeatherDisplay({
    required this.weatherData,
    required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Temperature: ${weatherData['main']['temp']}°C',
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(height: 10.0),
        Image.network(
          iconUrl,
          width: 100,
          height: 100,
        ),
        Text('Location: ${weatherData['name']}'),
        const SizedBox(height: 15.0),
        Text('Country: ${weatherData['sys']['country']}'),
        const SizedBox(height: 15.0),
        Text('Wind Speed: ${weatherData['wind']['speed']}'),
        const SizedBox(height: 15.0),
      ],
    );
  }
}
