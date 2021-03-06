import 'package:flutter/material.dart';

class konumIleArama extends StatefulWidget {
  @override
  State<konumIleArama> createState() => _konumIleAramaState();
}

class _konumIleAramaState extends State<konumIleArama> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar:
              AppBar(centerTitle: true, title: Text("KONUM İLE KUAFÖR ARAMA")),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 50, 40, 50),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                        labelText: 'İL',
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
                    SizedBox(height: 15),
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25),
                      decoration: InputDecoration(
                        labelText: 'İLÇE',
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
                    SizedBox(height: 15),
                    TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        labelText: 'MAHALLE',
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
                    ElevatedButton(
                        onPressed: () {
                          print("adasd");
                        },
                        child: Text("ARA"))
                  ]),
            ),
          )),
    );
  }
}
