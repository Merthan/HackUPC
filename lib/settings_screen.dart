import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<String> selectedA = [];
  int radius = 5; // Initialize to some default value
  List<String> selectedFilters = ['Test'];
  bool isNotificationEnabled = false;
  String selectedTheme = 'Dark'; // Default to Light theme

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          // Allergien
          ListTile(
            title: Text('Limit search to radius'),
            subtitle: Text('$radius km'),
            onTap: () {

            },
          ),

          ListTile(
            title: Text('Exclude'),
            subtitle: Text('Bars, Clubs'),
            onTap: () {

            },
          ),
          ListTile(
            title: Text('Theme'),
            subtitle: Text(selectedTheme),
            onTap: () {

            },
          ),

          // NEW SETTINGS BELOW

          // Thema (Theme)
          ListTile(
            title: Text('Language'),
            subtitle: Text('English'),
            onTap: () {
              // Implement a dialog or method to update the language settings
              // Don't forget to call setState to update the UI
            },
          ),

          SwitchListTile(
            title: Text('Notifications'),
            value: isNotificationEnabled,
            onChanged: (bool value) {
              setState(() {
                isNotificationEnabled = value;
              });
            },
          ),
          // Häufig gestellte Fragen (FAQ)
          ListTile(
            title: Text('FAQ'),
            onTap: () {
              // Navigate to FAQ screen
            },
          ),
          // Bewerten Sie unsere App (Rate Our App)
          ListTile(
            title: Text('Rate our app'),
            onTap: () {
              // Implement a method to rate the app, perhaps navigating to the app store page
            },
          ),
        ],
      ),
    );
  }
}
