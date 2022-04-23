import 'package:flutter/material.dart';

import 'hakkinda_page.dart';
import 'kuaforler_page.dart';

class kuaforHomePage extends StatefulWidget {
  const kuaforHomePage({Key? key}) : super(key: key);

  @override
  State<kuaforHomePage> createState() => _kuaforHomePageState();
}

class _kuaforHomePageState extends State<kuaforHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[200],
          body: Center(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 50, 25, 50),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'YILDIZ KUAFÖR',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          height: 230,
                          width: 320,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                  image: AssetImage("assets/berber.jpg"))),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('+'),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(200, 200),
                          ),
                          onPressed: () {},
                          child: Text('RANDEVULAR'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(200, 200),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => kuaforlerPage()),
                            );
                          },
                          child: Text('BERBERLER'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(200, 200),
                          ),
                          onPressed: () {},
                          child: Text('ÇALIŞMA SAATLERİ'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(200, 200),
                          ),
                          onPressed: () {},
                          child: Text('FİYAT LİSTESİ'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(200, 200),
                          ),
                          onPressed: () {},
                          child: Text('KONUM'),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(200, 200),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => hakkindaPage()),
                            );
                          },
                          child: Text('HAKKINDA'),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
