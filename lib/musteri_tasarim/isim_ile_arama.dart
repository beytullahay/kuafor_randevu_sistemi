import 'package:flutter/material.dart';

class isimIleArama extends StatefulWidget {
  @override
  State<isimIleArama> createState() => _isimIleAramaState();
}

class _isimIleAramaState extends State<isimIleArama> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar:
              AppBar(centerTitle: true, title: Text("İSİM İLE KUAFÖR ARAMA")),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        labelText: 'KUAFÖR İSMİ GİRİNİZ',
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 10.0),
                        hintText: 'KUAFÖR İSMİ',
                        prefixIcon: Icon(Icons.add_location_sharp),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.blueAccent),
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(10.0))),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(onPressed: () {}, child: Text("ARA"))
                  ]),
            ),
          )),
    );
  }
}
