import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_data.dart';

class MainCard extends StatelessWidget {
  final WeatherData weatherData;

  const MainCard({
    required this.weatherData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      shadowColor: Colors.black,
      color: Colors.grey,
      child: Container(
        height: 250,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Temperature',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              '${weatherData.temperature}°C',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Image.network(
              fit: BoxFit.fitWidth,
              weatherData.iconUrl,
              width: 112.4,
              height: 132.3,
            ),
          ],
        ),
      ),
    );
  }
}

class SmallCards extends StatelessWidget {
  final WeatherData weatherData;
  const SmallCards({
    super.key,
    required this.weatherData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          cardsm(
            'Location',
            ' ${weatherData.location}',
            Icons.location_on,
          ),
          cardsm(
            'Wind Speed',
            ' ${weatherData.windSpeed}',
            Icons.wind_power_outlined,
          ),
          cardsm(
            'Country',
            ' ${weatherData.country}',
            Icons.location_city_outlined,
          ),
        ],
      ),
    );
  }

  Card cardsm(
    String title,
    String subtitle,
    IconData _icon,
  ) {
    return Card(
      elevation: 50,
      shadowColor: Colors.black,
      color: Colors.grey,
      child: Container(
        width: 160,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              _icon,
              size: 50,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 22),
            ),
            Text(
              subtitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
