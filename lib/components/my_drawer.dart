import 'package:flutter/material.dart';
import 'package:food_delivery_app_mitch_koko/components/my_drawer_tile.dart';
import 'package:food_delivery_app_mitch_koko/pages/settings_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // app logo
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 80,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          Divider(),
          // home list tile
          MyDrawerTile(text: "H O M E", icon: Icons.home, onTap: () {
            Navigator.pop(context);
          }),

          // settings list tile
          MyDrawerTile(
              text: "S E T T I N G S", icon: Icons.settings, onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()));
              }),
          Spacer(),
          // logout list tile
          MyDrawerTile(text: "L O G O U T", icon: Icons.logout, onTap: () {}),

          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
