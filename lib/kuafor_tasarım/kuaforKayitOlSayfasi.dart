import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/constants.dart';

class KKayitOlSayfasi extends StatefulWidget {
  const KKayitOlSayfasi({Key key}) : super(key: key);

  @override
  State<KKayitOlSayfasi> createState() => _KKayitOlSayfasiState();
}

class _KKayitOlSayfasiState extends State<KKayitOlSayfasi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    logom,
                    SizedBox(height: 20),
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                        hintText: 'Salon Adı',
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                        prefixIcon: Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0))),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                        hintText: ' 05** *** ** **',
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0))),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      textAlign: TextAlign.center,
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(fontSize: 25, height: 1),
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                        hintText: 'Şehir ismi',
                        prefixIcon: Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0))),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                        hintText: 'İlçe İsmi',
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                        prefixIcon: Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0))),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                        hintText: 'Mahalle İsmi',
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                        prefixIcon: Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0))),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                        hintText: 'Sokak İsmi',
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                        prefixIcon: Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0))),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                        hintText: 'Bina No',
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                        prefixIcon: Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0))),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                        hintText: 'Daire No',
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                        prefixIcon: Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0))),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                        hintText: 'Şifre Giriniz',
                        isDense: true,
                        contentPadding: EdgeInsets.all(8),
                        prefixIcon: Icon(Icons.password),
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
                        primary: Colors.blueAccent, // background
                        onPrimary: Colors.white, // foreground
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => KKayitOlSayfasi()),
                        );
                      },
                      child: Text('KAYIT OL'),
                    ),
                    SizedBox(height: 20),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
