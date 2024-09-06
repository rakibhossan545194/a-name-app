
import 'package:flutter/material.dart';
import 'package:j/logout.dart';
import 'package:j/message_screen.dart';
import 'package:j/pages/shop_screen.dart';

class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('MD. Rakib'),
            accountEmail: Text('hossanr082@gmail.com'),
            currentAccountPicture: CircleAvatar(
              foregroundImage: NetworkImage(
                  'https://images.pexels.com/photos/36029/aroni-arsa-children-little.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                foregroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqTF0VSpbrw8D-OE7iMo3bAZUwdg4U9LFqwg&s'),
              ),
              CircleAvatar(
                child: Icon(Icons.person),
                backgroundColor: Colors.orange,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {

              },
              title: Text('Message'),
              leading: Icon(Icons.message_outlined),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              textColor: Colors.black,
              tileColor: Colors.lightGreen,
              iconColor: Colors.indigoAccent,
              contentPadding: EdgeInsets.zero,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {},
              title: Text('Chat'),
              leading: Icon(Icons.chat),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              textColor: Colors.black,
              tileColor: Colors.lightGreen,
              iconColor: Colors.indigoAccent,
              contentPadding: EdgeInsets.zero,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {},
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              textColor: Colors.black,
              tileColor: Colors.lightGreen,
              iconColor: Colors.indigoAccent,
              contentPadding: EdgeInsets.zero,
            ),
          ),
          Divider(
            thickness: 2,
            color: Colors.orange,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {

              },
              title: Text('Shop'),
              leading: Icon(Icons.shop),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              textColor: Colors.black,
              tileColor: Colors.lightGreen,
              iconColor: Colors.indigoAccent,
              contentPadding: EdgeInsets.zero,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {},
              title: Text('About'),
              leading: Icon(Icons.adb_outlined),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              textColor: Colors.black,
              tileColor: Colors.lightGreen,
              iconColor: Colors.indigoAccent,
              contentPadding: EdgeInsets.zero,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Logout();
                  }),
                );
              },
              child: Text('Logout'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
            ),
          ),
        ],
      ),
    );
  }
}