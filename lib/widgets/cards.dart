import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      shadowColor: Colors.black,
      color: Colors.blue,
      child: Container(
        height: 250,
        width: 400,
        child: const Column(
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Let's Talk About Love",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class SmallCards extends StatelessWidget {
  // const SmallCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          cardsm(
            'hello',
          ),
          cardsm(
            'lkjjjjjjkl',
          ),  cardsm(
            'hello',
          ),  cardsm(
            'hello',
          ),
      
        ],
      ),
    );
  }

  Card cardsm(
    String txt,
  ) {
    return Card(
      elevation: 50,
      shadowColor: Colors.black,
      color: Colors.grey,
      child: Container(
        // height: 50,
        width: 200,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              txt,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
