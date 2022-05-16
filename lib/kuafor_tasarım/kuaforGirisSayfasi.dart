import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/kuafor_tasar%C4%B1m/kuaforKayitOlSayfasi.dart';
import 'package:kuafor_randevu_sistemi/sifremi_unuttum_page.dart';

import 'kuafor_home_page.dart';

class kuaforGirisSayfasi extends StatefulWidget {
  const kuaforGirisSayfasi({Key key}) : super(key: key);

  @override
  State<kuaforGirisSayfasi> createState() => _kuaforGirisSayfasiState();
}

class _kuaforGirisSayfasiState extends State<kuaforGirisSayfasi> {
  final _kGirisFormKey = GlobalKey<FormState>();
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
              key: _kGirisFormKey,
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
                            return 'Mail Kutusu Boş Bırakılamaz!';
                          }
                          return null;
                        },
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                        decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 10.0),
                          hintText: 'Mail Adresi Giriniz',
                          prefixIcon: Icon(Icons.mail),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.blueAccent),
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0))),
                        ),
                        keyboardType: TextInputType.phone,
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
                          if (_kGirisFormKey.currentState.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => kuaforHomePage()),
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
                                  builder: (context) => KKayitOlSayfasi()),
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
