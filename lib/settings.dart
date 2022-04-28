import 'package:flutter/material.dart';
import 'package:kuafor_randevu_sistemi/models/colors.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    Text mavi = Text(
      "mavi",
      style: TextStyle(color: Theme.of(context).primaryColor),
    );
    Text yesil = Text(
      "yesil",
      style: TextStyle(color: Colors.green),
    );

    return Scaffold(
        appBar: AppBar(title: Text('Tema Secimi Yapınız')),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Card(
            child: SwitchListTile(
          subtitle: _value ? mavi : yesil,
          title: Text('Tema değiştirme'),
          value: _value,
          onChanged: (bool value) {
            setState(() {
              _value = value;

              /// butona basılınca provider ile yayınlasın yoksa renk değişmez
              Provider.of<ColorThemeData>(context, listen: false)
                  .SwitchTheme(value);
            });
          },
        )));
  }
}
