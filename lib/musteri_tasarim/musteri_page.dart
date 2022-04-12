import 'package:flutter/material.dart';

import 'aktif_randevularim.dart';
import 'favori_kuaforlerim.dart';

class musteriPage extends StatefulWidget {
  const musteriPage({Key? key}) : super(key: key);

  @override
  State<musteriPage> createState() => _musteriPageState();
}

class _musteriPageState extends State<musteriPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Colors.blueAccent,
              backgroundImage: AssetImage('assets/profil.png'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Mehmet Salih',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            Text(
              '0539 654 34 21',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(250, 50),
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => aktifRandevularim()),
                );
              },
              child: Text('AKTİF RANDEVULARIM'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(250, 50),
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => musteriPage()),
                );
              },
              child: Text('İSİM İLE KUAFÖR ARAMA'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(250, 50),
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => musteriPage()),
                );
              },
              child: Text('KONUM İLE KUAFÖR ARAMA'),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(250, 50),
                primary: Colors.blueAccent, // background
                onPrimary: Colors.white, // foreground
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => favoriKuaforlerim()),
                );
              },
              child: Text('FAVORİ KUAFÖRLERİM'),
            ),
          ],
        ),
      ),
    ));
  }
}
