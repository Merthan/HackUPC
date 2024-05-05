import 'package:flutter/material.dart';

import 'main.dart';


class ItemDetailScreen extends StatelessWidget {
  final Item item;

  ItemDetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),  // Expected to be something like "Reichstag Details"
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(item.imageUrl),  // Image of the Reichstag
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16),

            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: InfoRow('Architect', 'Paul Wallot'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: InfoRow('Opened', '1894'),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: InfoRow('Reconstruction', '1999 by Norman Foster'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: InfoRow('Feature', 'Glass dome with public access and view into the plenary chamber'),
            ),Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: InfoRow('Address', 'Platz der Republik 1, 11011 Berlin, Germany'),
            ),
            Container(
              height: 200,
              width: double.infinity, // Takes the full width available
              child: Image.network(
                'https://i.imgur.com/uoL1vRa.png', // Image showing the interior or another relevant aspect
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Visitor Center",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Opening Hours:",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Daily from 08:00 AM to 12:00 AM, last admission at 10:00 PM",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    icon: Icon(Icons.public), // Replace with an appropriate icon
                    label: Text("Purchase tickets"),
                    onPressed: () {
                      // Action to launch a virtual tour
                    },
                  ),

                  ElevatedButton.icon(
                    icon: Text("📅"), // Native flutter emoji
                    label: Text("Plan Visit"),
                    onPressed: () {
                      // Action to plan a visit
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  InfoRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 200,
            child: Text(value),
          ),
        ],
      ),
    );
  }
}