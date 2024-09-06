import 'package:flutter/material.dart';
import 'package:j/pages/form_screen.dart';
import 'package:j/pages/home.dart';
import 'package:j/pages/login.dart';

import 'pages/regsiter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'register': (context) => MyRegister(),
        'login': (context) => MyLogin(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: FormScreen(),
    );
  }
}
