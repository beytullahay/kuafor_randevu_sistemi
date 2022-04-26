import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/kullaniciTipi.dart';
import 'package:kuafor_randevu_sistemi/models/colors.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  /// themanın provider yayını
  runApp(ChangeNotifierProvider<ColorThemeData>(
      create: (BuildContext context) => ColorThemeData(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ColorThemeData>(context).selectedTheme, // ThemeData

      home: kullaniciTipi(),
      debugShowCheckedModeBanner: false,
    );
  }
}
