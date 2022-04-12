import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/kullaniciTipi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: kullaniciTipi());
  }
}
