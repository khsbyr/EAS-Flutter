import 'package:flutter/material.dart';

class Winds extends StatefulWidget {
  @override
  _WindsState createState() => _WindsState();
}

class _WindsState extends State<Winds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Хүчтэй салхи"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/1.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ХҮЧТЭЙ САЛХИ ГЭЖ ЮУ ВЭ?",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff645dd7),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Text(
                "Салхины хурд 18 м / с ба түүнээс их агаарын урсгалыг хүчтэй салхи гэнэ . Хүчтэй салхи улирлын байдлаас хамааран хүчтэй шороон шуурга , хүчтэй цасан шуурга болдог .",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "ЦАГ АГААРЫН МЭДЭЭ СОНС , ГАДАГШ ГАРАХГҮЙ , НӨМӨР НӨӨЛӨГ ГАЗАРТ БАЙЖ ДУЛААН ХУВЦАСЛА",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Авах арга хэмжээ",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff645dd7),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "1. ЦАХИЛГААН ХЭРЭГСЭЛ , САМБАРЫГ САЛГАХ \n2. ХҮЙТЭН ҮЕД ДУЛААН , НЯГТ НЭХЭЭСТЭЙ , УС НЭВТЭРДЭГГҮЙ ХӨНГӨН ХУВЦСЫГ ОЛОН ДАВХАРЛАН ӨМСӨХ \n3. ЦАСАН ШУУРГА , ЭРС ХҮЙТРЭЛТИЙН ҮЕД ГАДАА БАЙГАА ТОХИОЛДОЛД : \n   - ҮРГЭЛЖ ХӨДӨЛГӨӨНТЭЙ БАЙХ \n   - БИЕИЙН ДУЛААН АЛДАГДАХААС СЭРГИЙЛЭХ \n4. ТУСЛАМЖ ИРТЭЛ АВТОМАШИНААСАА ГАРАХГҮЙ , АВТОМАШИНАА ОРХИЖ ХОЛ ЯВАХГҮЙ БАЙХ \n5. МАЛЫГ НӨМӨР ГАЗАР ТОГТООХ \n6.ХАЛУУН ШИНГЭН ЗҮЙЛ УУХ , КОФЕ БОЛОН АРХИ УУХГҮЙ БАЙХ ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Урьдчилан сэргийлэх, хамгаалах",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff645dd7),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "1. ЦАГ АГААРЫН ӨДӨР ТУТМЫН МЭДЭЭГ ТОГТМОЛ ХҮЛЭЭН АВЧ АЖИЛ АМЬДРАЛАА ЗОХИЦУУЛАХ\n2. ТҮЛЭЭ ТҮЛШ, ХҮНСЭЭ НӨӨЦЛӨХ\n3. МАЛ УРУУДАХ ҮЕД ТОГТООХ ГАЗАР ОРНЫГ МЭДДЭГ БАЙХ\n4. ХААЛГА, ЦОНХ, САЛХИВЧИЙГ ХААЖ БЭХЛЭХ",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
