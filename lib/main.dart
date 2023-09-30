import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Telegram'),
          elevation: 0,
          backgroundColor: const Color(0xff517da2),
          centerTitle: false,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search_outlined),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Color(0xff517da2)),
                accountName: Text(
                  "Ali Omar Abdi",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("+252612731232"),
                currentAccountPicture: CircleAvatar(
                
                  foregroundImage: AssetImage('assets/images/Ali.jpg'),
                ),
              ),
              ListTile(
                title: Text("New Group"),
                leading: Icon(Icons.group_outlined),
              ),
              ListTile(
                title: Text("Call"),
                leading: Icon(Icons.call_outlined),
              ),
              ListTile(
                title: Text("People Nearby"),
                leading: Icon(Icons.person_pin_circle_outlined),
              ),
              ListTile(
                title: Text("New Group"),
                leading: Icon(Icons.group_outlined),
              ),
              ListTile(
                title: Text("Save Messages"),
                leading: Icon(Icons.bookmark_outlined),
              ),
              Divider(
                height: 15,
                thickness: 0.0,
              ),
              ListTile(
                title: Text("Invite Friends"),
                leading: Icon(Icons.person_add_outlined),
              ),
              ListTile(
                title: Text("Telegram Features"),
                leading: Icon(Icons.help_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}