import 'package:flutter/material.dart';

class favoriKuaforlerim extends StatefulWidget {
  const favoriKuaforlerim({Key key}) : super(key: key);

  @override
  State<favoriKuaforlerim> createState() => _favoriKuaforlerimState();
}

class _favoriKuaforlerimState extends State<favoriKuaforlerim> {
  Color _iconColor = Colors.red;
  Color _iconColorr = Colors.red;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueAccent,
              centerTitle: true,
              title: Text(
                'Favori Kuaförlerim',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            body: Column(
              children: [
                SizedBox(height: 25.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    color: Colors.blueAccent,
                    elevation: 5,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.blueAccent,
                        backgroundImage: AssetImage('assets/profil.png'),
                      ),
                      title: Text(
                        'Yıldız Kuaför',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Kadiköy / İstanbul'),
                        ],
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              _iconColor == Colors.red
                                  ? _iconColor = Colors.black
                                  : _iconColor = Colors.red;
                            });
                          },
                          icon: Icon(Icons.favorite),
                          color: _iconColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 12),
                    color: Colors.blueAccent,
                    elevation: 5,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 25.0,
                        backgroundColor: Colors.blueAccent,
                        backgroundImage: AssetImage('assets/profil.png'),
                      ),
                      title: Text(
                        'Hasan Kuaför',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Sancaktepe / İstanbul'),
                        ],
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              _iconColorr == Colors.red
                                  ? _iconColorr = Colors.black
                                  : _iconColorr = Colors.red;
                            });
                          },
                          icon: Icon(Icons.favorite),
                          color: _iconColorr),
                    ),
                  ),
                ),
              ],
            )));
  }
}
