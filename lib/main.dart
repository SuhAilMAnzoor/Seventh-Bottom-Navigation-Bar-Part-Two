import 'package:flutter/material.dart';
import 'package:seventh_bottom_navigation_bar/screens/screen1.dart';
import 'package:seventh_bottom_navigation_bar/screens/screen2.dart';
import 'package:seventh_bottom_navigation_bar/screens/screen3.dart';
import 'package:seventh_bottom_navigation_bar/screens/screen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainScreen(),
    );
  }
}


// Main Screen Class

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MainScreen> {
  int myIndex = 0;
  List<Widget> widgetList = const [      
    HomeScreen(),     // Text("Home", style: TextStyle(fontSize: 40)),
    SearchScreen(),   // Text("Search", style: TextStyle(fontSize: 40)),     // To Uncomment these Text, first you have to comment these four pages HomeScreen,
    FavoriteScreen(), // Text("Favorite", style: TextStyle(fontSize: 40)),   // SearchScreen..., But This is better to add pages in bottom Text is only for Testing Purpose when i created this app this is for me not for you
    ProfileScreen()   // Text("Profile", style: TextStyle(fontSize: 40))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetList[myIndex],
      ),
      // appBar: AppBar(
      //   title: const Text("Bottom Navigation Bar"),       // AppBar not in App
      // ),
      bottomNavigationBar: BottomNavigationBar(        // Bottom Navigation Starts
        // showSelectedLabels: false, // both are used to hide lables
        showUnselectedLabels: false, // which shows below the icon
        backgroundColor: Colors.indigo, // Set background color to indigo
        type: BottomNavigationBarType.fixed, // Ensures fixed color
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        selectedItemColor: Colors.white, // Optional: Change selected item color
        unselectedItemColor: const Color.fromARGB(
            255, 255, 243, 20), // Optional: Change unselected item color

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.grey),
        ],
      ),
    );
  }
}