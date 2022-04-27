import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/constants.dart';

class kuaforlerPage extends StatefulWidget {
  const kuaforlerPage({Key key}) : super(key: key);

  @override
  State<kuaforlerPage> createState() => _kuaforlerPageState();
}

class _kuaforlerPageState extends State<kuaforlerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(title: Text("KUAFÖRLER")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) => kuaforCards()),
                SizedBox(height: 10.0),
              ],
            ),
          ),
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

class kuaforCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              backgroundImage: AssetImage('assets/profil.png'),
            ),
            title: Text('Metin Yılmaz'),
            subtitle: Text('26'),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.cancel)),
          )
        ],
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
        child: Center(
            child: Column(
          children: [
            avatar1,
            SizedBox(
              height: 10,
            ),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                hintText: 'İSİM',
                prefixIcon: Icon(Icons.account_circle_rounded),
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
                hintText: 'SOYİSİM',
                prefixIcon: Icon(Icons.account_circle_rounded),
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
                hintText: 'YAŞ',
                prefixIcon: Icon(Icons.account_circle_rounded),
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
