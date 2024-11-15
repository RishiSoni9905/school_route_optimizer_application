import 'package:flutter/material.dart';

class DriverDrawer extends StatelessWidget {
  const DriverDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_sharp,
                  color: Colors.blue,
                  size: 75.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: Text(
                    'Username',
                    style: TextStyle(fontSize: 22.0),
                  ),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Row(
              children: [
                Icon(
                  Icons.cached,
                  size: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Change Route',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(
                  Icons.notifications,
                  size: 22.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Notifications',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(
                  Icons.chat,
                  size: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Messages',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
          const Divider(color: Colors.black45),
          ListTile(
            title: const Row(
              children: [
                Icon(
                  Icons.power_settings_new,
                  size: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Logout',
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
