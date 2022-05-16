import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/musteri_tasarim/musteriKayitOlSayfasi.dart';
import 'package:kuafor_randevu_sistemi/musteri_tasarim/musteri_home_page.dart';
import 'package:kuafor_randevu_sistemi/sifremi_unuttum_page.dart';

class musteriGirisSayfasi extends StatefulWidget {
  const musteriGirisSayfasi({Key key}) : super(key: key);

  @override
  State<musteriGirisSayfasi> createState() => _musteriGirisSayfasiState();
}

class _musteriGirisSayfasiState extends State<musteriGirisSayfasi> {
  final _mKayitFormKey = GlobalKey<FormState>();
  TextEditingController _mail = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _passwordConfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("MÜŞTERİ GİRİŞİ"),
          ),
          body: Center(
            child: Form(
              key: _mKayitFormKey,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        height: 200,
                        width: 200,
                        image: AssetImage("assets/appLogo.jpg"),
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        controller: _mail,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Mail kutusu boş bırakılamaz!';
                          }
                          return null;
                        },
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10.0),
                          hintText: 'Mail adresi giriniz',
                          prefixIcon: Icon(Icons.mail),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.blueAccent),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0))),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _password,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Şifre boş bırakılamaz';
                          }
                          return null;
                        },
                        obscureText: true,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10.0),
                          hintText: 'Şifre Giriniz',
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.black),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0))),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(200, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          if (_mKayitFormKey.currentState.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => musteriPage()),
                            );
                          }
                        },
                        child: Text('GİRİŞ YAP'),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => sifremiUnuttumPage()),
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
                          child: Text('Kayıt Ol ',
                              style: TextStyle(color: Colors.black)))
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
