import 'package:flutter/material.dart';
import 'package:j/logout.dart';
import 'package:j/pages/details_screen.dart';
import 'package:j/pages/drawer.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  int _selectedIndex = 0;
  final List<Widget> _views = <Widget>[
     Container(
       decoration: BoxDecoration(
         image: DecorationImage(
             image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/001/849/553/small_2x/modern-gold-background-free-vector.jpg'),
           fit: BoxFit.cover,
         ),

       ),
     ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/008/014/115/small_2x/tropical-leaves-background-design-summer-leaves-flat-illustration-simple-banner-with-copy-space-free-vector.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://t4.ftcdn.net/jpg/05/71/83/47/360_F_571834789_ujYbUnH190iUokdDhZq7GXeTBRgqYVwa.jpg'),
          fit: BoxFit.cover,
        ),

      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Screen'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      drawer: drawer(),
      body: SafeArea(
        child: _views.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        iconSize: 15,
        selectedItemColor: Colors.blueAccent,
        selectedLabelStyle: TextStyle(color: Colors.black),
        selectedIconTheme: IconThemeData(
          color: Colors.blue,
        ),
        backgroundColor: Colors.blueGrey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.amber,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                color: Colors.amber,
              ),
              label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_important,
                color: Colors.amber,
              ),
              label: "Notification"),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
