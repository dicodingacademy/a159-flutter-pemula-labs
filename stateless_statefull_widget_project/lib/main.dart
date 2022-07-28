import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          /// mengubah widget Text dengan widget [Heading] atau [BiggetText].
          child: Text(
            "Hello world!",
          ),
        ),
      ),
    );
  }
}

/// Kamu bisa gunakan snippet untuk membuat [StatelessWidget].
/// Caranya kamu ketik "stl" pada editor. Pilih "Flutter Stateless Widget". Editor
/// akan membuatkan struktur [StatelessWidget] secara otomatis.
class Heading extends StatelessWidget {
  /// State [text] bersifat final yang artinya tidak dapat berubah (immutable)
  final String text;

  /// State [text] dilewatkan pada constructor class. Selain itu, terdapat parameter
  /// [key] sebagai tanda pengenal untuk widget [Heading]. [Key] selalu ada agar
  /// widget memiliki identitas yang berbeda dengan penggunaan widget lainnya.
  const Heading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

/// Kamu bisa gunakan snippet untuk membuat [StatefulWidget].
/// Caranya kamu ketik "stf" pada editor. Pilih "Flutter Stateful Widget". Editor
/// akan membuatkan struktur [StatefulWidget] secara otomatis.
class BiggerText extends StatefulWidget {
  /// Parameter [text] adalah parameter dari widget [BiggerText].
  /// Parameter ini tidak wajib ada, kamu bisa sesuaikan dengan kebutuhan widget yang
  /// kamu inginkan.
  final String text;

  const BiggerText({
    Key? key,
    required this.text,
  }) : super(key: key);

  /// Berbeda dengan [StatelessWidget], widget [BiggerText] akan mengembalikan "state"
  /// dari widget [_BiggerTextState], bukan hanya sebuah widget.
  @override
  State<BiggerText> createState() => _BiggerTextState();
}

/// Kelas [_BiggerTextState] adalah turunan dari state widget [BiggerText].
class _BiggerTextState extends State<BiggerText> {
  /// Sedangkan parameter [_textSize] adalah state dari widget [BiggerText].
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text,
          style: TextStyle(fontSize: _textSize),
        ),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            /// Fungsi [setState] akan mengubah nilai state [_textSize]. Selain itu,
            /// fungsi [setState] akan memuat ulang widget keseluruhan sehingga tampilan
            /// teks berubah.
            setState(() {
              /// ukuran teks diubah menjadi 32
              _textSize = 32.0;
            });
          },
        )
      ],
    );
  }
}
