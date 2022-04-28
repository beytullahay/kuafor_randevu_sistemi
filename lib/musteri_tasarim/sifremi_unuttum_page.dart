import 'package:flutter/material.dart';

class sifremiUnuttumPage extends StatefulWidget {
  @override
  State<sifremiUnuttumPage> createState() => _sifremiUnuttumPageState();
}

class _sifremiUnuttumPageState extends State<sifremiUnuttumPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("ŞİFREMİ UNUTTUM"),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Şifresini yenilemek istediğiniz telefon numarasını giriniz",
                    style: TextStyle(fontSize: 25.0),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: ' +90 *** ** **',
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.blueAccent),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0))),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(200, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          // return object of type Dialog
                          return AlertDialog(
                            title: new Text("Şifreniz Sıfırlandı"),
                            content: new Text(
                                "Lütfen Telefonunuza gelen mesajı kontrol ediniz"),
                            actions: <Widget>[
                              // usually buttons at the bottom of the dialog
                              new ElevatedButton(
                                child: new Text("Kapat"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                      print("şifre sıfırlanıyor...");
                    },
                    child: Text('ŞİFREYİ SIFIRLA'),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
