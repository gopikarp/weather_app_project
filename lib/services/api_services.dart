// data/weather_service.dart by c  not part of ui

import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  final String apiKey;

  WeatherService({required this.apiKey});

  Future<dynamic> getWeather(String city) async {
    String url =
        'https://api.openweathermap.org/data/2.5/weather?q=$city&units=metric&appid=$apiKey';

    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Failed to fetch weather data");
    }
  }
}






// weather_api.dart

// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:weather_app/config/api_key.dart';



// Future<dynamic> getWeather(String city) async {
//   String url =
//       'https://api.openweathermap.org/data/2.5/weather?q=$city&units=metric&appid=$apiKey';

//   http.Response response = await http.get(Uri.parse(url));
//   if (response.statusCode == 200) {
//     return jsonDecode(response.body);
//   } else {
//     throw Exception("failed");
//   }
// }



// import 'dart:convert';
// import 'package:http/http.dart' as http;

// import 'package:weather_app/config/api_key.dart';

// class ApiService {
//   Future<dynamic> getWeather(String city) async {
//     String url =
//         'https://api.openweathermap.org/data/2.5/weather?q=$city&units=metric&appid=$apiKey';

//     http.Response response = await http.get(Uri.parse(url));
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       throw Exception("failed");
//     }
//   }

// }
