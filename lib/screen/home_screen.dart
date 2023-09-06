import 'package:flutter/material.dart';
import 'package:weather_app/widgets/cards.dart';
import 'package:weather_app/widgets/search_bar.dart';
import 'package:weather_app/widgets/text.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // dynamic _weatherData;
  // String _icon = '';
  TextEditingController _cityController = TextEditingController();

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
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Search_Bar(
                cityController: _cityController,
                onPressed: () {},
              ),
              MainCard(),
              sizedboxH,
              const AddText(),
              SmallCards(),
            ],
          ),
        ),
      ),
    );
  }
}
