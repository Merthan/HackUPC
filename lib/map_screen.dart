import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.network(
            'https://i.imgur.com/eBG41TB.png',//Reused a random map picture
            fit: BoxFit.cover, // Crop the image to fit the screen
          ),
        ),
      ),
    );
  }
}





