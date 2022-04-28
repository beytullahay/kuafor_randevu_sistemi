import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/constants.dart';

class MKayitOlSayfasi extends StatefulWidget {
  const MKayitOlSayfasi({Key key}) : super(key: key);

  @override
  State<MKayitOlSayfasi> createState() => _MKayitOlSayfasiState();
}

class _MKayitOlSayfasiState extends State<MKayitOlSayfasi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("KAYIT OL"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              logom,
              SizedBox(height: 30),
              TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  hintText: 'İsim Soyisim Giriniz',
                  prefixIcon: Icon(Icons.people),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10.0))),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  hintText: ' 05** *** ** **',
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black),
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
                  prefixIcon: Icon(Icons.password),
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
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MKayitOlSayfasi()),
                  );
                },
                child: Text('KAYIT OL'),
              ),
              SizedBox(height: 10),
            ]),
          ),
        ),
      ),
    );
  }
}
