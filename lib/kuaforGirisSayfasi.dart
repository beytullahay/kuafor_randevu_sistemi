import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/kuaforKayitOlSayfasi.dart';

import 'kuafor_tasarım/kuafor_home_page.dart';

class kuaforGirisSayfasi extends StatefulWidget {
  const kuaforGirisSayfasi({Key? key}) : super(key: key);

  @override
  State<kuaforGirisSayfasi> createState() => _kuaforGirisSayfasiState();
}

class _kuaforGirisSayfasiState extends State<kuaforGirisSayfasi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                radius: 70.0,
                child: Text(
                  'LOGO',
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.blueAccent,
              ),
              SizedBox(height: 20),
              TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
                decoration: InputDecoration(
                  hintText: ' 05** *** ** **',
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(30.0))),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
                decoration: InputDecoration(
                  hintText: 'Şifre Giriniz',
                  prefixIcon: Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(30.0))),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  primary: Colors.blueAccent, // background
                  onPrimary: Colors.white, // foreground
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => kuaforHomePage()),
                  );
                },
                child: Text('GİRİŞ YAP'),
              ),
              SizedBox(height: 10),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => kuaforGirisSayfasi()),
                    );
                  },
                  child: Text('Şifremi Unuttum')),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => KKayitOlSayfasi()),
                    );
                  },
                  child: Text('Kayıt Ol '))
            ]),
          ),
        ),
      )),
    );
  }
}
