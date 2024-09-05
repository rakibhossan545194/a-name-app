import 'package:flutter/material.dart';
import 'package:j/pages/details_screen.dart';

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
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (context){
                    return DetailsScreen();
                  }
              ),
              );
            },
            child: Text('Form Screen'),
        ),
      ),

    );
  }
}
