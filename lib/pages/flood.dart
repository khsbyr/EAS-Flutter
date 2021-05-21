import 'package:flutter/material.dart';

class Flood extends StatefulWidget {
  @override
  _FloodState createState() => _FloodState();
}

class _FloodState extends State<Flood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Үер, усны осол"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage('assets/flood.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "ҮЕР ГЭЖ ВУ ВЭ?",
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
                "Гол , мөрний усны түвшин хэвийн хэмжээнээс дээшлэн савнаасаа хальж урсгал нь хэт түргэсэх , хуурай сайр жалга даган усны хүчтэй түрэлт , урсгал бий болохыг ҮЕР гэнэ . Гүехэн ус байсан ч хурдтай урсаж байгаа ус аюултай байдаг учир автомашинаар болон явган туулах , сэлэх нь эрсдэлтэй!",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "ХҮЛЭЭ , УС БҮҮ ГАТАЛ , ӨНДӨРЛӨГ ГАЗАРТ ОЧ , НӨХЦӨЛ БАЙДЛЫГ ҮНЭЛ",
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
                "1. ҮЕРИЙН АЮУЛ УЧИРЧ БОЛЗОШГҮЙ ТУХАЙ МЭДЭЭЛЭЛ АВМАГЦ АЮУЛГҮЙ ГАЗАР БУЮУ ӨНДӨРЛӨГ ГАЗАРТ ОЧИХ\n2. БИЕДЭЭ ЧУХАЛ ШААРДЛАГАТАЙ БАРИМТ БИЧИГ , ДУЛААН ХУВЦАС БОЛОН 2-ООС ДООШГҮЙ ХОНОГИЙН ХҮНС АВЧ ЯВАХ  \n3. ГЭРЭЭСЭЭ ГАРАХДАА ГЭРЛЭЭ УНТРААЖ ЦАХИЛГААН ХЭРЭГСЛИЙГ САЛГАХ\n4. ЦАХИЛГААН ЗУУХ , УС ХАЛААГЧ , ЦАХИЛГААНЫ САМБАРАА УСАНД АВТАХААРГҮЙ ГАЗАР БАЙРЛУУЛАХ \n5. ЦОНХОО САЙТАР ХААЖ , НЭГ ДАВХРЫН ХААЛГА , ЦОНХЫГ ГАДНААС НЬ ТАГЛАХ\n6. ҮЕРИЙН УСНЫ ТҮВШИН БАГАСТАЛ БАЙШИНГИЙН ДЭЭД ДАВХАР , ДЭЭВЭР ДЭЭР , ЭСХҮЛ ӨНДӨР МОД БОЛОН БУСАД ӨНДӨРЛӨГ ГАЗАРТ ГАРАХ  ",
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
                "1. ГЭР , БАЙШИН , ХАШАА ХОРОО ТАНЬ ҮЕРИЙН ТҮВШНЭЭС ДЭЭШ БАЙГАА ЭСЭХИЙГ МЭДДЭГ БАЙХ\n2. ҮЕРТ БАГА ӨРТДӨГ , ХАРЬЦАНГУЙ ӨНДӨРЛӨГ ГАЗАР БОЛОН ГЭР ОРОНДОО ХҮРЭХ ХАМГИЙН ДӨТ , АЮУЛ БАГАТАЙ ЗАМЫГ МЭДДЭГ БАЙХ\n3. ХҮҮХДЭДЭЭ АЮУЛГҮЙ БАЙДЛАА ХАНГАХ ТАЛААР МЭДЛЭГ ОЛГОХ , СУРГАХ ( ХААНА УУЛЗАХ , ХААШАА НҮҮХ , АЛЬ ЗАМААР ЯВАХЫГ УРЬДЧИЛАН ТОХИРОХ )\n4. ҮЕРИЙН ҮЕД ХЭРЭГЛЭХ ЗҮЙЛ(ЗАВЬ, АВРАХ ЦАГИРАГ, ХАНТААЗ) ХААНА БАЙГААГ, ЯАЖ АШИГЛАХЫГ МЭДДЭГ БАЙХ",
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
