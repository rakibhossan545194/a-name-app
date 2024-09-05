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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Screen'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      drawer: drawer(),
    );
  }
}


