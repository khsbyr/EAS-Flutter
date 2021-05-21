import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _searchable = [
    {'name': 'ГАЛ ТҮЙМРИЙН ДУУДЛАГА', 'contact': '101'},
    {'name': 'ЦАГДААГИЙН ДУУДЛАГА', 'contact': '102'},
    {'name': 'ЯАРАЛТАЙ ТҮРГЭН\nТУСЛАМИЙН ТӨВ', 'contact': '103, 70120103'},
    {'name': 'ГАМШИГ, ОСЛЫН ДУУДЛАГА', 'contact': '105'},
    {'name': 'ГЭР БҮЛИЙН\nХҮЧИРХИЙЛЛИЙН ДУУДЛАГА', 'contact': '107'},
    {'name': 'ХҮҮХДИЙН ТУСЛАМЖИЙН\nУТАС', 'contact': '108'},
    {
      'name': 'ОНЦГОЙ БАЙДЛЫН\nЕРӨНХИЙ ГАЗАР',
      'contact': '11-325726, 11-265726'
    },
    {'name': 'ЗАМЫН ЦАГДААГИЙН\nЖИЖҮҮР', 'contact': '70112100'},
    {'name': 'ТӨМӨР ЗАМЫН ЦАГДАА', 'contact': '24102'},
    {
      'name': 'ГЭМТЭЛ СОГОГ\nСУДЛАЛЫН ҮНДЭСНИЙ ТӨВ',
      'contact': '70180130, 70180131, 70170132'
    },
  ];

  var items = [];

  @override
  void initState() {
    super.initState();
    items.addAll(_searchable);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: new Column(
          children: <Widget>[
            new Container(
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(5.0),
            ),
            new Expanded(
                child: new ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return new Card(
                  elevation: 1.0,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: GestureDetector(
                    child: new Container(
                      margin: EdgeInsets.all(9.0),
                      padding: EdgeInsets.all(6.0),
                      child: new Row(children: <Widget>[
                        Icon(FontAwesomeIcons.phone),
                        new Padding(padding: EdgeInsets.all(10.0)),
                        new Text(
                          '${items[index]['name']}\n\n'
                          '${items[index]['contact']}',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ]),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
