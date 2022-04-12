import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class kuaforlerPage extends StatefulWidget {
  const kuaforlerPage({Key? key}) : super(key: key);

  @override
  State<kuaforlerPage> createState() => _kuaforlerPageState();
}

class _kuaforlerPageState extends State<kuaforlerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child: Column(
          children: [
            Text(
              "KUAFÖRLER",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Positioned(
              top: 100,
              left: 100,
              child: Card(
                color: Colors.blue,
                elevation: 10.0,
                shadowColor: Colors.grey.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 130,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                alignment: Alignment.bottomLeft,
                                image: AssetImage("assets/kullanici.png"))),
                      ),
                    ),
                    SizedBox(width: 40),
                    Expanded(child: Text("Ahmet YILMAZ")),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 100,
              child: Card(
                color: Colors.blue,
                elevation: 10.0,
                shadowColor: Colors.grey.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 130,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                                alignment: Alignment.bottomLeft,
                                image: AssetImage("assets/kullanici.png"))),
                      ),
                    ),
                    SizedBox(width: 40),
                    Expanded(child: Text("Mehmet Şahin")),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(30, 30),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kuaforlerPage()),
                );
              },
              child: Text('+'),
            ),
          ],
        )),
      ),
    ));
  }
}
