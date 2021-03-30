import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageurl =
      "https://images-na.ssl-images-amazon.com/images/I/81QJ4TqbusL._SL1500_.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text(
                    "Rahul Sharma",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  accountEmail: Text(
                    "rahul07sharmars@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),
                )
                ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text("Home_profile"),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text("Mail me"),
            ),
          ],
        ),
      ),
    );
  }
}
