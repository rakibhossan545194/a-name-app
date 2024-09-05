import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> products = ["Mobile","Fun","Laptop", "Chair","Microphone"];
  List<String> productsDetails = ["Samsung Mobile Phone","Brb Fan", "Mac Book", "Office Chair","Boya mircro phone"];
  List<String> productsPrice = ["10000","4500","120000","1200","2000"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        elevation: 5,
        title: Text('I am Rakib'),
        backgroundColor: Colors.deepOrange,

        centerTitle: true,



      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index){
          return ListTile(
            onTap: (){},
            title: Text(products[index]),
            leading: Text(products[index][0]),
            trailing: Text(productsPrice[index]),
            subtitle: Text(productsDetails[index]),
          );
        },
      ),




    );
  }
}

