import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class hakkindaPage extends StatelessWidget {
  TextEditingController text1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "HAKKINDA",
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 40, 15, 15),
        child: Center(
          child: Column(
            children: [
              Text(
                "Hakkında Yazısı Giriniz",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: text1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(vertical: 100),
                ),
                maxLines: 10,
                minLines: 1,
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Güncelle")),
            ],
          ),
        ),
      ),
    ));
  }
}
