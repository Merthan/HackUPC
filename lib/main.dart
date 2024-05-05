import 'package:flutter/material.dart';
import 'package:hackupc/user_add_screen.dart';

import 'item_detail_screen.dart';
import 'map_screen.dart';
import 'settings_screen.dart';

final List<Item> items = [
  Item('Brandenburger Tor', 'https://images.unsplash.com/photo-1560969184-10fe8719e047?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', [GRN, GRY]),
  Item('Reichstag', 'https://images.unsplash.com/photo-1578548052647-c9985883f37d?q=80&w=1208&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', [GRN, GRY]),
  Item('Berlin Cathedral', 'https://images.unsplash.com/photo-1561548024-bcaa67b740b5?q=80&w=1102&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', [GRN, YEL]),
  Item('Museum Island', 'https://images.unsplash.com/photo-1567806740800-c6d7be4a17dc?q=80&w=1160&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', [GRN, GRY, PUR]),
  Item('East Side Gallery', 'https://images.unsplash.com/photo-1617911779552-5a0984271bfb?q=80&w=1126&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', [GRN, GRY]),
  Item('Pergamon Museum', 'https://images.unsplash.com/photo-1602035973306-ab6676ae7494?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', [GRN, GRY]),
  Item('Television Tower', 'https://images.unsplash.com/photo-1526571921637-50f912df64d5?q=80&w=1336&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', [GRN, YEL]),
  Item('Checkpoint Charlie', 'https://images.unsplash.com/photo-1704471504052-63ae32427d49?q=80&w=1335&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', [GRN, GRY]),
  Item('Charlottenburg Palace', 'https://images.unsplash.com/photo-1631913940559-6ea8b04a2088?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', [GRN, GRY, PUR]),
  Item('Berlin Zoo', 'https://images.unsplash.com/photo-1567500789774-f8e6271d6d61?q=80&w=1282&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', [GRN, GRY]),
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Light theme settings
        primarySwatch: Colors.deepOrange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        // Dark theme settings
        brightness: Brightness.dark,
        primaryColor: Colors.amber,
        accentColor: Colors.cyan,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          color: Colors.amber, // Color of AppBar in dark theme
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.cyan, // FAB color in dark theme
        ),
        cardColor: Colors.grey[800], // Card color in dark theme
      ),
      home: MainScreen(),
      routes: {
        '/map': (context) => MapScreen(),
        '/home': (context) => HomeScreen(),
        '/set': (context) => SettingsScreen(),
      },
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    MapScreen(),
    AddScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_home_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        selectedItemColor: Colors.blue, // Color for the selected item
        unselectedItemColor: Colors.grey, // Color for the unselected items
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore'),
      ),
      body: ItemGrid(items),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FloatingActionButton(
          onPressed: () {
            // Perhaps open a filter dialog
          },
          mini: true,
          child: Icon(Icons.filter_list),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
    );
  }
}

class ItemCard extends StatelessWidget {
  final Item item;

  ItemCard(this.item);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemDetailScreen(item: item),
          ),
        );
      },
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(item.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Text(
                item.title,
                maxLines: 2,  // Limit text to 2 lines
                overflow: TextOverflow.ellipsis,  // Add ellipsis when text overflows
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemGrid extends StatelessWidget {
  final List<Item> items;

  ItemGrid(this.items);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: (1 / 0.8),
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8),
          child: ItemCard(items[index]),
        );
      },
    );
  }
}

class Item {
  final String title;
  final String imageUrl;
  final List<String> badges;

  Item(this.title, this.imageUrl, this.badges);
}


//BIO VEG ORG REG NEW
//Badges
const GRY = "https://cdn.icon-icons.com/icons2/2550/PNG/512/badge_check_icon_152693.png";
const GRN = "https://cdn2.iconfinder.com/data/icons/essentials-volume-i/128/verified-green-1024.png";
const OUT = "https://cdn1.iconfinder.com/data/icons/heroicons-ui/24/badge-check-512.png";
const PUR = "https://cdn-icons-png.flaticon.com/512/6874/6874364.png";
const YEL = "https://cdn-icons-png.flaticon.com/512/5253/5253968.png";






