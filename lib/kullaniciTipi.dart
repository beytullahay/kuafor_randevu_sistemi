import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/constants.dart';
import 'package:kuafor_randevu_sistemi/kuafor_tasar%C4%B1m/kuaforGirisSayfasi.dart';
import 'package:kuafor_randevu_sistemi/musteri_tasarim/musteriGirisSayfasi.dart';

class kullaniciTipi extends StatelessWidget {
  const kullaniciTipi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.blue[200],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              logom,
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 60),
                  primary: Colors.blueAccent, // background
                  onPrimary: Colors.white, // foreground
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => musteriGirisSayfasi()),
                  );
                },
                child: Text('MÜŞTERİ GİRİŞİ'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(350, 60),
                  primary: Colors.blueAccent, // background
                  onPrimary: Colors.white, // foreground
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => kuaforGirisSayfasi()),
                  );
                },
                child: Text('KUAFÖR GİRİŞİ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
