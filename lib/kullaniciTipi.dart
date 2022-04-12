import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/kuaforGirisSayfasi.dart';
import 'package:kuafor_randevu_sistemi/musteriGirisSayfasi.dart';

class kullaniciTipi extends StatelessWidget {
  const kullaniciTipi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 90.0,
                  child: Text(
                    'LOGO',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.blueAccent,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(350, 60),
                    primary: Colors.blueAccent, // background
                    onPrimary: Colors.white, // foreground
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
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
                        borderRadius: BorderRadius.circular(30)),
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
      ),
    );
  }
}
