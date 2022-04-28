import 'package:flutter/material.dart';

TextStyle kMetinStili = const TextStyle(
    color: Colors.black54, fontSize: 20, fontWeight: FontWeight.bold);

TextStyle kSayiStili = const TextStyle(
    color: Colors.lightBlue, fontSize: 30, fontWeight: FontWeight.bold);

Image logom = const Image(
  image: AssetImage("assets/appLogo.jpg"),
  fit: BoxFit.cover,
);

Image logom2 = const Image(
  image: AssetImage("assets/appLogoGreen.png"),
  fit: BoxFit.cover,
);

dynamic avatar1 = const CircleAvatar(
  radius: 50.0,
  backgroundColor: Colors.blueAccent,
  backgroundImage: AssetImage('assets/profil.png'),
);

dynamic avatar2 = const CircleAvatar(
  backgroundColor: Colors.blueAccent,
  backgroundImage: AssetImage('assets/profil.png'),
);
