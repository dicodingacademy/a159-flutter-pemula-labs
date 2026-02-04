import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  final List<String> friendsName = const <String>[
    'Budi',
    'Andi',
    'Caca',
    'Dedi',
    'Euis',
    'Fifi',
    'Gigi',
    'Hari',
    'Icha',
    'Joko',
    'Kiki',
    'Lili',
    'Mami',
    'Nani',
    'Opo',
    'Papa',
    'Qiqi',
    'Rudi',
    'Susi',
    'Tono',
    'Umi',
    'Vivi',
    'Wati',
    'Xena',
    'Yuni',
    'Zaza',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: friendsName
            .length, // Menyesuaikan dengan jumlah data di variabel list
        itemBuilder: (context, index) {
          // Variabel index membantu kita mengambil data secara berurutan
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text("$index"),
            ),
            title: Text(
              friendsName[index],
            ), // Mengambil nama dari list berdasarkan posisi
            subtitle: Text("Nama teman ke-$index"),
            onTap: () {
              // Logika saat salah satu baris diklik
              debugPrint("Anda menghubungi ${friendsName[index]}");
            },
          );
        },
      ),
    );
  }
}
