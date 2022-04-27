import 'package:flutter/material.dart';

class calismaSaatleri extends StatefulWidget {
  @override
  State<calismaSaatleri> createState() => _calismaSaatleriState();
}

class _calismaSaatleriState extends State<calismaSaatleri> {
  @override
  bool _checked = false;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: [
                checkBoxs("08:00 - 08:30"),
                checkBoxs("08:30 - 09:00"),
                checkBoxs("09:30 - 10:00")
              ],
            ),
          ),
        ),
      ),
    );
  }

  CheckboxListTile checkBoxs(String saat) {
    return CheckboxListTile(
      title: Text(saat),
      secondary: Icon(Icons.access_time_filled),
      controlAffinity: ListTileControlAffinity.platform,
      value: _checked,
      onChanged: (bool value) {
        setState(() {
          _checked = value;
        });
      },
      activeColor: Colors.green,
      checkColor: Colors.black,
    );
  }
}
