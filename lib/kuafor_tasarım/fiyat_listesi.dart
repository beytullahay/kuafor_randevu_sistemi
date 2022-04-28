import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/constants.dart';

class fiyatListesiPage extends StatefulWidget {
  @override
  State<fiyatListesiPage> createState() => _fiyatListesiPageState();
}

class _fiyatListesiPageState extends State<fiyatListesiPage> {
  List<Map<String, String>> data = [
    {
      'id': 'Saç Kesimi',
      'value': "50",
    },
    {
      'id': 'Sakal Kesimi',
      'value': "30",
    },
    {
      'id': 'Saç Yıkama',
      'value': "10",
    },
    {
      'id': 'Saç Boyama',
      'value': "50",
    },
    {
      'id': 'Masaj',
      'value': "80",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(centerTitle: true, title: Text("FİYAT LİSTESİ")),
        body: ListView.builder(
          padding: EdgeInsets.only(top: 40),
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -4),
              contentPadding: EdgeInsets.fromLTRB(80, -50, 80, -50),
              leading: Text(
                data[index]['id'],
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              trailing: Text(
                " ${data[index]['value']} TL ",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => bottomSheetContainer());
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class bottomSheetContainer extends StatelessWidget {
  const bottomSheetContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 420.0,
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                hintText: 'İŞLEM',
                prefixIcon: Icon(
                  Icons.attribution,
                  color: Colors.blueAccent,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.blueAccent),
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
                hintText: 'ÜCRET',
                prefixIcon: Icon(
                  Icons.attach_money_rounded,
                  color: Colors.blueAccent,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.blueAccent),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10.0))),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: Text("EKLE"))
          ],
        )),
      ),
    );
  }
}
