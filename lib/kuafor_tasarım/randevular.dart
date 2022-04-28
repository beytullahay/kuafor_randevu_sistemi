import 'package:flutter/material.dart';

class randevularPage extends StatefulWidget {
  @override
  State<randevularPage> createState() => _randevularPageState();
}

class _randevularPageState extends State<randevularPage> {
  DateTime _selectedDate;

  TextEditingController t1 = TextEditingController();

  @override
  void dispose() {
    t1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Scrollbar(
              child: Column(
                children: [
                  TextFormField(
                    controller: t1,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(vertical: 10.0),
                      hintText: 'Tarih Seçiniz',
                      prefixIcon: Icon(Icons.date_range_rounded),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0))),
                    ),
                    //
                    //
                    onTap: () async {
                      DateTime _selectedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate:
                            (new DateTime.now()).add(new Duration(days: 7)),
                        selectableDayPredicate: (date) {
                          // If not Sunday or Saturday return day as clicable

                          //Pazar günleri randevu alınmasını engellemek için
                          if (date.weekday != 6) {
                            return true;
                          }
                          return false;
                        },
                      );
                      setState(
                        () {
                          t1.text = _selectedDate.toString();
                        },
                      );
                    },
                  ),

                  //
                  SizedBox(height: 30.0),
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
            subtitle: Text('10:00 - 10:30'),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.cancel)),
          )
        ],
      ),
    );
  }
}
