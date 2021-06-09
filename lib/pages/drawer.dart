import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgUrl = "https://img.icons8.com/bubbles/2x/user-male.png";
    return Drawer(
      child: Container(
          color: Colors.teal[300],
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Sudipto Mitro",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                  accountEmail: Text(
                    "sudiptomitro2016@gmail.com",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  currentAccountPicture: Image.network(imgUrl),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text("Home",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text("Profile",
                    style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ],
          )),
    );
  }
}
