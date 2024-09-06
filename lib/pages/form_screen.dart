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
    const Center(

      child: Image(
        image: NetworkImage('https://www.shutterstock.com/image-photo/back-view-unrecognizable-solitary-hiker-260nw-2460279067.jpg'),
      ),

    ),
    const Center(

      child: Image(
        image: NetworkImage('https://t4.ftcdn.net/jpg/07/36/82/89/360_F_736828938_FqSfw9ZzpzOi1uaCeYD80UMRcdJ0bAaF.jpg'),
      ),

    ),
    const Center(

      child: Image(
        image: NetworkImage('https://t4.ftcdn.net/jpg/07/36/82/89/360_F_736828938_FqSfw9ZzpzOi1uaCeYD80UMRcdJ0bAaF.jpg'),
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
