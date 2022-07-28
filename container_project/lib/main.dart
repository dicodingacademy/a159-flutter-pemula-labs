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
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Container(
        /// Kamu bisa beri warna background pada [Container]
        /// dengan parameter [color]. Akan tetapi, jika [Container]
        /// menerapkan parameter [decoration], parameter color
        /// harus dipindahkan ke [decoration].
        // color: Colors.blue,

        /// Kamu bisa mengatur lebar dan tinggi dari [Container].
        width: 200,
        height: 100,

        /// Tambahkan [padding] untuk memberi jarak antara konten
        /// dengan [Container].
        padding: const EdgeInsets.all(10),

        /// Tambahkan [margin] untuk memberi jarak antara [Container]
        /// dengan bagian luar [Container].
        margin: const EdgeInsets.all(10),

        /// Parameter [decoration] untuk melakukan styling. Kamu bisa
        /// menambahkan warna background, shadow, border, border-radius,
        /// shape, dan lain-lain.
        decoration: BoxDecoration(
          color: Colors.red,
          // shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3, 6),
              blurRadius: 10,
            ),
          ],
          border: Border.all(color: Colors.green, width: 3),
          borderRadius: BorderRadius.circular(10),
        ),

        /// Teks 'Hi' akan dibungkus dengan [Container] dengan variasi
        /// bentuk, styling dan layout.
        child: const Text(
          'Hi',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
