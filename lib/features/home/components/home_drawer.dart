import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                "https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-1/657154559_3138452803030244_9065713126536363015_n.jpg?stp=dst-jpg_tt6&cstp=mx2048x2048&ctp=s200x200&_nc_cat=106&ccb=1-7&_nc_sid=1d2534&_nc_ohc=ucIPiGw0YPYQ7kNvwGz3ttm&_nc_oc=Ador_LYC-rumY4P1vdCv6UKTQczrZKCFr5bTeBjSwNehxpDCcOzA-Oip9xQlOsipt8Y&_nc_zt=24&_nc_ht=scontent-hbe1-1.xx&_nc_gid=pIk28MNcASNvqZCX8p_KhA&_nc_ss=7b2a8&oh=00_AQHRQk402EtwhXrwqBkjY3OkLibf0R2ZTu1C1S5aPIuYgQ&oe=6A8CC507",
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                ListTile(
                  splashColor: Colors.orangeAccent,
                  leading: const Icon(Icons.holiday_village),
                  onTap: () {},
                  title: const Text("Home"),
                ),
                ListTile(
                  splashColor: Colors.orangeAccent,
                  leading: const Icon(Icons.pets),
                  onTap: () {},
                  title: const Text("My Adoptions"),
                ),
                ListTile(
                  splashColor: Colors.orangeAccent,
                  leading: const Icon(Icons.settings),
                  onTap: () {},
                  title: const Text("Settings"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
