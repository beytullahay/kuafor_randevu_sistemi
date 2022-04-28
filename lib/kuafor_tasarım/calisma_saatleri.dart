import 'package:flutter/material.dart';

class calismaSaatleri extends StatefulWidget {
  @override
  State<calismaSaatleri> createState() => _calismaSaatleriState();
}

class _calismaSaatleriState extends State<calismaSaatleri> {
  List<Map<String, dynamic>> data = [
    {
      'id': '09:00 - 09:00',
      'value': true,
    },
    {
      'id': '09:30 - 10.00',
      'value': true,
    },
    {
      'id': '10.00 - 10.30',
      'value': true,
    },
    {
      'id': '10.30 - 11.00',
      'value': true,
    },
    {
      'id': '11.00 - 10.30',
      'value': true,
    },
    {
      'id': '11:30 - 12.00',
      'value': true,
    },
    {
      'id': '12.00 - 12.30',
      'value': true,
    },
    {
      'id': '12:30 - 13.00',
      'value': true,
    },
    {
      'id': '13.00 - 13.30',
      'value': true,
    },
    {
      'id': '13:30 - 14.00',
      'value': true,
    },
    {
      'id': '14.00 - 14.30',
      'value': true,
    },
    {
      'id': '15.00 - 15.30',
      'value': true,
    },
    {
      'id': '15.30 - 16.00',
      'value': true,
    },
    {
      'id': '16.00 - 16.30',
      'value': true,
    },
    {
      'id': '16.30 - 17.00',
      'value': true,
    },
    {
      'id': '17.00 - 17.30',
      'value': true,
    },
    {
      'id': '17.30 - 18.00',
      'value': true,
    },
    {
      'id': '18.00 - 18.30',
      'value': true,
    },
    {
      'id': '18.30 - 19.00',
      'value': true,
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        child: Scaffold(
            appBar: AppBar(centerTitle: true, title: Text("ÇALIŞMA SAATLERİ")),
            body: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                      contentPadding: EdgeInsets.fromLTRB(50, -50, 50, -50),
                      title: Text(data[index]['id']),
                      value: data[index]['value'],
                      onChanged: (value) {
                        setState(() {
                          data[index]['value'] = value;
                        });
                      });
                })),
      ),
    );
  }
}
