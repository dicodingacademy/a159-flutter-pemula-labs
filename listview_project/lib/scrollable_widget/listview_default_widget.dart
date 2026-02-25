import 'package:flutter/material.dart';

class ListViewDefaultWidget extends StatelessWidget {
  const ListViewDefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blue),
            title: Text("Pengaturan Profil"),
            trailing: Icon(Icons.chevron_right),
            onTap: () => debugPrint("Klik Profil"),
          ),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.red),
            title: Text("Notifikasi"),
            trailing: Icon(Icons.chevron_right),
            onTap: () => debugPrint("Klik Notifikasi"),
          ),
          // Anda bisa menambah widget lain seperti Image atau Container di sini
        ],
      ),
    );
  }
}
