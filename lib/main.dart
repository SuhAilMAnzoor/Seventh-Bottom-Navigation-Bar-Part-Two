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
      debugShowCheckedModeBanner: false,
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
        showSelectedLabels: true, // when you select any of them, will be labeled with its name at the bottom , you have set it <true> which means yes when i select one of them(icon) it shows its name
        showUnselectedLabels: true, // when unselectd, will be labeled with its name at the bottom Or Not, you have set it <true> which means yes unselectd shows its name
        backgroundColor: const Color.fromARGB(210, 2, 136, 219), // Set background color 
        type: BottomNavigationBarType.fixed, // Ensures fixed color not extra colors will be picked if you fixed it  this color
        onTap: (index) { //function for selecting bottom navigation
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        selectedItemColor: const Color.fromARGB(242, 249, 172, 7), // Optional: Change selected item color to this
        unselectedItemColor: const Color.fromARGB(255, 20, 255, 28), // Optional: Change unselected item color to this

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              // backgroundColor: Colors.amber  These colors are not in use because of you used a propertiy named type >>  type: BottomNavigationBarType.fixed that color will be used
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
              backgroundColor: Colors.indigo), // not picked 
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "Favorite",
              backgroundColor: Colors.orange),  // not picked
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
              backgroundColor: Colors.grey),
        ],
      ),
    );
  }
}