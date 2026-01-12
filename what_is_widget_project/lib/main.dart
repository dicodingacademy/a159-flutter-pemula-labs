import 'package:flutter/material.dart';

/// Ini fungsi utama yang akan proyek Flutter jalankan.
void main() {
  runApp(const MyApp());
}

/// Kelas [MyApp] menjadi kelas utama saat menjalankan aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// MaterialApp akan menampilkan aplikasi menggunakan Material Design
    /// source: https://api.flutter.dev/flutter/material/MaterialApp-class.html
    return MaterialApp(
      /// Judul aplikasi Flutter dideklarasikan pada parameter [title]
      title: 'Flutter Demo',

      /// Tema aplikasi Flutter dideklarasikan pada parameter [theme]
      theme: ThemeData(primarySwatch: Colors.blue),

      /// Parameter [home] adalah rute pertama yang akan dijalankan,
      /// sedangkan widget [Scaffold] adalah tampilan dasar Material Design.
      home: Scaffold(
        /// Parameter [appBar] untuk menampilkan App Bar pada bagian atas [Scaffold].
        appBar: AppBar(title: const Text('Hello, world!')),

        /// Parameter [body] untuk menampilkan konten utama pada badan [Scaffold].
        /// Kamu bisa mengubah isi konten aplikasi pada parameter ini.
        ///
        /// Sebagian besar widget memiliki parameter [child], salah satunya adalah widget [Center].
        /// Widget tersebut dianggap sebagai parent-widget, sedangkan widget pada parameter [child]
        /// dianggap sebagai child-widget.
        body: const Center(
          /// Parameter [child] ini adalah sebuah "anak" dari widget [Center]. Kamu bisa memberikan
          /// satu widget apapun di dalamnya.
          ///
          /// Berbeda dengan widget yang memiliki parameter [children]. Parameter tersebut dapat
          /// kamu tambahkan dengan banyak "anak". Kamu bisa temui pada widget Row, Column, ListView,
          /// dan masih banyak lainnya.
          child: Text('Hello, world!'),
        ),
      ),
    );
  }
}
