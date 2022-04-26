import 'package:flutter/material.dart';

class ColorThemeData with ChangeNotifier {
  final ThemeData blueTheme = ThemeData(
      primaryColor: Colors.blue[200],
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.blue[200],
      accentColor: Colors.blue[200],
      appBarTheme: AppBarTheme(color: Colors.blue),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme());

  final ThemeData greenTheme = ThemeData(
      primaryColor: Colors.green,
      primarySwatch: Colors.green,
      scaffoldBackgroundColor: Colors.green,
      accentColor: Colors.green[200],
      appBarTheme: AppBarTheme(color: Colors.green),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme());

  ThemeData _selectedTheme = ThemeData(
      primaryColor: Colors.blue[200],
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.blue[200],
      accentColor: Colors.blue[200],
      appBarTheme: AppBarTheme(color: Colors.blue),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme());

  void SwitchTheme(bool selected) {
    _selectedTheme = selected ? blueTheme : greenTheme;
    notifyListeners();
  }

  //private yaptık ki dışarıdan erişilemesin o yüzden get kullandık.
  ThemeData get selectedTheme => _selectedTheme;
}
