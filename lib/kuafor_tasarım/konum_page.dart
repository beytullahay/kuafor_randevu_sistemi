import 'package:flutter/material.dart';

class konumPage extends StatefulWidget {
  @override
  State<konumPage> createState() => _konumPageState();
}

class _konumPageState extends State<konumPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                "KONUM BİLGİLERİ",
              )),
          body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'İL',
                      prefixIcon: Icon(Icons.add_location_sharp),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.blueAccent),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0))),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'İLÇE',
                      prefixIcon: Icon(Icons.add_location_sharp),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.blueAccent),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0))),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'MAHALLE',
                      prefixIcon: Icon(Icons.add_location_sharp),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.blueAccent),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0))),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'SOKAK',
                      prefixIcon: Icon(Icons.add_location_sharp),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.blueAccent),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0))),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'DAİRE NO',
                      prefixIcon: Icon(Icons.add_location_sharp),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.blueAccent),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0))),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 10),
                  TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'NO',
                      prefixIcon: Icon(Icons.add_location_sharp),
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.blueAccent),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0))),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(onPressed: () {}, child: Text("GÜNCELLE"))
                ]),
          )),
    );
  }
}
