import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';


class Search_Bar extends StatefulWidget {
  // Search_Bar({super.key});
  final TextEditingController cityController;
  final VoidCallback onPressed;

  Search_Bar({
    required this.cityController,
    required this.onPressed,
  });
  @override
  State<Search_Bar> createState() => _Search_BarState();
}

class _Search_BarState extends State<Search_Bar> {
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AnimSearchBar(
      rtl: true,
      width: 360,
      textController: cityController,
      onSuffixTap: () {
        setState(() {
          cityController.clear();
        });
      },
      onSubmitted: (cityController) {
        //  searchController.clear();
      },
    );
  }
}
