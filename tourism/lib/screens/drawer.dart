import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountEmail: Text('olusoji'),
          accountName: Text('Olusoji'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                'assets/images/olusoji.jpg',
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage('assets/images/beach.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.face),
          title: Text('Upload Shot'),
          onTap: () {
            print('object');
          },
        ),
      ],
    ));
  }
}
