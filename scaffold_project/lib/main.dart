import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      /// Tambahkan keyword [const] yang menandakan bahwa widget bernilai
      /// konstan dan tidak berubah. Hal ini berlaku pada seluruh widget
      /// lainnya
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  /// [Scaffold] merupakan sebuah widget yang digunakan untuk membuat tampilan
  /// dasar material design pada aplikasi Flutter. Biasanya dapat disebut
  /// juga dasar sebuah halaman pada aplikasi Flutter

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Kamu bisa tambahkan dengan parameter [appBar] untuk menampilkan AppBar
      /// pada [Scaffold]. [AppBar] adalah header/toolbar yang akan tampil di
      /// bagian atas [Scaffold].
      appBar: AppBar(
        title: const Text('First Screen'),

        /// Parameter [actions] berisi kumpulan widget yang akan tampil pada
        /// kanan [AppBar]. Kamu bisa tambahkan menu [Icon] atau semacamnya.
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],

        /// Parameter [leading] dapat kamu isi dengan widget yang akan tampil
        /// pada kiri [AppBar]. Kamu bisa tambahkan [Icon] atau semacamnya.
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),

      /// Parameter [body] dapat kamu isi dengan konten aplikasi.
      body: const Center(
        child: Text('Hello world!'),
      ),

      /// Parameter [floatingActionButton] akan menambahkan widget pada bagian
      /// kanan bawah. Biasanya parameter ini berisi widget [FloatingActionButton].
      /// Posisi dari widget akan melayang (floating) di atas konten aplikasi.
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
