import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_data.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/widgets/cards.dart';
import 'package:weather_app/widgets/custom_text.dart';
import 'package:weather_app/widgets/custom_textfieald.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _cityController = TextEditingController();
  WeatherData? _weatherData;
  String _errorMessage = '';
  late WeatherService _weatherService;

  void _searchWeather() {
    String city = _cityController.text;
    _weatherService.getWeather(city).then((weatherData) {
      setState(() {
        _weatherData = WeatherData(
          location: weatherData['name'],
          country: weatherData['sys']['country'],
          windSpeed: weatherData['wind']['speed'].toDouble(),
          temperature: weatherData['main']['temp'].toDouble(),
          iconUrl:
              'https://openweathermap.org/img/w/${weatherData['weather'][0]['icon']}.png',
        );
        _errorMessage = '';
      });
    }).catchError((error) {
      setState(() {
        _weatherData = null;
        _errorMessage = 'City not found. Please enter a valid city name.';
      });
    });
  }

  void initState() {
    super.initState();
    // Initialize _weatherService inside initState
    _weatherService =
        WeatherService(apiKey: '38735bd25d6d1e34223e0a87bbd91137');
  }

  void _refreshWeather() {
    setState(() {
      _weatherData = null;
      _cityController.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget sizedboxH = const SizedBox(
      height: 30,
    );
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Weather App'),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: _refreshWeather,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Column(
            children: [
              sizedboxH,
              CustomTextField(
                cityController: _cityController,
                onPressed: _searchWeather,
              ),
              Builder(
                builder: (BuildContext context) {
                  if (_errorMessage.isNotEmpty) {
                    return Text(
                      _errorMessage,
                      style: const TextStyle(color: Colors.red),
                    );
                  } else if (_weatherData != null) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MainCard(weatherData: _weatherData!),
                        sizedboxH,
                        const SizedBox(
                          height: 40,
                          child: AddText(),
                        ),
                        SmallCards(weatherData: _weatherData!),
                      ],
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              sizedboxH,
            ],
          ),
        ),
      ),
    );
  }
}
