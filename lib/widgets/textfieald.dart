// search_buttons but dosnt use

import 'package:flutter/material.dart';

class SearchButtons extends StatelessWidget {
  final TextEditingController cityController;
  final VoidCallback onPressed;

  SearchButtons({
    required this.cityController,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: cityController,
          decoration: const InputDecoration(
            hintText: 'Enter city',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: onPressed,
          child: const Text('Search'),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}

