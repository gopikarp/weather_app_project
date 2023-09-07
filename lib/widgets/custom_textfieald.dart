
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController cityController;
  final VoidCallback onPressed;

  CustomTextField({
    required this.cityController,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: cityController,
          onTap: () {
            Navigator.pushNamed(context, '/search');
          },
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            hintText: 'Entert City',
            prefixIcon: Icon(Icons.location_city),
            suffixIcon: IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.search),
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
