import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          new UserAccountsDrawerHeader(
            accountName: Text(
              'Dewi Rahayu N.',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Quicksand',
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'dewirahayu432@gmail.com',
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: new AssetImage('assets/displaypicture.jpeg'),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/drawer.jpg'),
                    fit: BoxFit.cover)),
          ),
          listDrawer(Icons.check_box, 'Favorit'),
          listDrawer(Icons.account_circle, 'Akun'),
          listDrawer(Icons.settings, 'Pengaturan'),
          listDrawer(Icons.close, 'Log Out')
        ],
      ),
    );
  }

  Widget listDrawer(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(fontFamily: 'Quicksand', fontSize: 15.0),
      ),
      onTap: () {},
    );
  }
}
