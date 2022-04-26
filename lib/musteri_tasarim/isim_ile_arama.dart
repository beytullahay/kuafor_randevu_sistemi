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
          body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  hintText: 'İL İSMİ GİRİNİZ',
                  prefixIcon: Icon(Icons.add_location_sharp),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.blueAccent),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10.0))),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  hintText: 'İLÇE İSMİ GİRİNİZ',
                  prefixIcon: Icon(Icons.add_location_sharp),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.blueAccent),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10.0))),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                  hintText: 'MAHALLE İSMİ GİRİNİZ',
                  prefixIcon: Icon(Icons.add_location_sharp),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.blueAccent),
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(10.0))),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("ARA"))
            ]),
      )),
    );
  }
}
