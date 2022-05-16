import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class sifremiUnuttumPage extends StatefulWidget {
  @override
  State<sifremiUnuttumPage> createState() => _sifremiUnuttumPageState();
}

class _sifremiUnuttumPageState extends State<sifremiUnuttumPage> {
  @override
  Widget build(BuildContext context) {
    final _resetFormKey = GlobalKey<FormState>();
    TextEditingController _emailController = TextEditingController();

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("ŞİFREMİ UNUTTUM"),
          ),
          body: Center(
            child: Form(
              key: _resetFormKey,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Şifresini yenilemek istediğiniz mail adresini giriniz",
                      style: TextStyle(fontSize: 25.0),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (!EmailValidator.validate(value)) {
                          return 'Lütfen Geçerli bir adres giriniz';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'E-mail',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0))),
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
                                  "Lütfen Mail Adresinize Gelen Mesajı Kontrol Ediniz"),
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
            ),
          )),
    );
  }
}
