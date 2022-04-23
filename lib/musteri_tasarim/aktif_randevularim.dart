import 'package:flutter/material.dart';

class aktifRandevularim extends StatefulWidget {
  const aktifRandevularim({Key? key}) : super(key: key);

  @override
  State<aktifRandevularim> createState() => _aktifRandevularimState();
}

class _aktifRandevularimState extends State<aktifRandevularim> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blue[200],
            appBar: AppBar(
              backgroundColor: Colors.blueAccent,
              centerTitle: true,
              title: Text(
                'Aktif Randevularım',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 20, 15, 5),
                  child: Container(
                    height: 90,
                    child: Card(
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
                          style: TextStyle(
                              color: Color.fromARGB(255, 12, 242, 24)),
                        ),
                        isThreeLine: true,
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '23/04/2022',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '14:00 - 14:30',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Kartal / İstanbul',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                  child: Container(
                    height: 90,
                    child: Card(
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
                          'Şahin Kuaför',
                          style: TextStyle(
                              color: Color.fromARGB(255, 12, 242, 24)),
                        ),
                        isThreeLine: true,
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '23/04/2022',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              '17:00 - 17:30',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Kadiköy / İstanbul',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
