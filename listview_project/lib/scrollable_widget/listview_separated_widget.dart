import 'package:flutter/material.dart';

class ListViewSeparatedWidget extends StatelessWidget {
  const ListViewSeparatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 50,
        // 1. Membangun konten utama
        itemBuilder: (context, index) => ListTile(
          title: Text("Berita Hari Ini #$index"),
          leading: Icon(Icons.article),
        ),
        // 2. Membangun pemisah di antara item (tapi tidak di paling atas/bawah)
        separatorBuilder: (context, index) => Divider(
          height: 1,
          color: Colors.grey[300],
          indent: 50, // Memberikan jarak agar garis tidak menabrak ikon leading
        ),
      ),
    );
  }
}
