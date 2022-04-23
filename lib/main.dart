import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/kullaniciTipi.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: kullaniciTipi(),
      debugShowCheckedModeBanner: false,
    );
  }
}
