import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/constants.dart';
import 'package:kuafor_randevu_sistemi/musteri_tasarim/musteriKayitOlSayfasi.dart';

import 'musteri_page.dart';

class musteriGirisSayfasi extends StatefulWidget {
  const musteriGirisSayfasi({Key? key}) : super(key: key);

  @override
  State<musteriGirisSayfasi> createState() => _musteriGirisSayfasiState();
}

class _musteriGirisSayfasiState extends State<musteriGirisSayfasi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.blue[200],
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              logom,
              SizedBox(height: 20),
              TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  hintText: ' 05** *** ** **',
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.blueAccent),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10.0))),
                ),
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  hintText: 'Şifre Giriniz',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10.0))),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(200, 50),
                  primary: Colors.blueAccent, // background
                  onPrimary: Colors.white, // foreground
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => musteriPage()),
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
                          builder: (context) => musteriGirisSayfasi()),
                    );
                  },
                  child: Text(
                    'Şifremi Unuttum',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MKayitOlSayfasi()),
                    );
                  },
                  child:
                      Text('Kayıt Ol ', style: TextStyle(color: Colors.black)))
            ]),
          ),
        ),
      )),
    );
  }
}
