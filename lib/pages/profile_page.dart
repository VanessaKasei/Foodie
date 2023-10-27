// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter_app/pages/favorites_page.dart';
import 'package:my_flutter_app/pages/home_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

   int _selectedIndex =2;

 /* @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 198, 219, 2),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Your profile content here
            Icon(
              Icons.person,
            ),

            // Sign Out Button
            ElevatedButton(
              onPressed: () {
                signUserOut();
                SystemNavigator.pop();
              },
              child: Text("Sign Out"),
            ),
          ],
        ),
      ),
            bottomNavigationBar: BottomNavigationBar(
              
              elevation: 0,
       /* selectedItemColor: Colors.cyan,
        unselectedItemColor: Color.fromARGB(255, 198, 219, 2),*/
        items: [
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          //favorites
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (int index) {
          if (index == 2) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          } else if (index == 0) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } else {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => FavoritesPage()),
            );
          }
        },
      ),
    );
  }*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 198, 219, 2),
        title: Text("Profile"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.cyan, // Color for the selected item
        unselectedItemColor: Color.fromARGB(255, 198, 219, 2), // Color for unselected items
        currentIndex: _selectedIndex, // Set the selected index
        items: [
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          // Favorites
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),

          // Profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        onTap: (int index) {
          // Handle item selection here
          setState(() {
            _selectedIndex = index; // Update the selected index
          });

          if (index == 0) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } /*else if (index == 0) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage()),
            );*/
           else {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => FavoritesPage()),
            );
          }
        },
      ),
            body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Your profile content here
            Icon(
              Icons.person,
            ),

            // Sign Out Button
            ElevatedButton(
              onPressed: () {
                signUserOut();
                SystemNavigator.pop();
              },
              child: Text("Sign Out"),
            ),
          ],
        ),
      ),
    );
  }
}