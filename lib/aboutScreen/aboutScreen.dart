import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mnab3/main.dart';
import 'package:url_launcher/url_launcher.dart';
import '../componants/componants.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/background.png'),fit: BoxFit.cover,opacity:0.05  )
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(children: [
              Padding(
              padding: EdgeInsets.only(top: 15.0,left: 15),
              child: InkWell(onTap: (){navigateTo(context, const MyHomePage());},child: CircleAvatar(backgroundImage: AssetImage('assets/images/homeIcon.png'),)),
            ),
              Padding(
                padding: EdgeInsets.only(top: 30.0,left: 250),
              child: Text('عن التطبيق',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: HexColor('#804A9D'),), textAlign: TextAlign.start,),),


            ],),
            Padding(
              padding: EdgeInsets.only(top: 10.0,right: 40,left: 40),
              child: Text('منبع القراءة هو جزء من فكرة كتاب منبع القراءة والذي قام بتأليفه الأستاذ / راشد بن سليمان المحروقي هذا الكتاب يهدف الى تعليم قراءة اللغة العربية وأيضا لمعالجة الضعف القرائي لدى الطلاب ولمواكبة التطور التقني ولتسهيل وصول الكتاب لأكبر شريحة على مستوى العالم اِرْتَأَى ان يكون هناك تطبيق للهواتف يسهل على الطلاب تعلم القراءة  وبإضافة مقاطع صوتية به.',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.red),textAlign: TextAlign.center),),
            Text('يرجى زيارة الرابط',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#804A9D'),), textAlign: TextAlign.start,),
            TextButton(onPressed: () { launchUrl(Uri.parse('https://oman123.com/manba/')); },
                child: Text('https://oman123.com/manba/',style: TextStyle(fontSize: 18,color: Colors.red,), textAlign: TextAlign.start,)),
            Text('تصميم وتطوير',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: HexColor('#804A9D'),), textAlign: TextAlign.start,),
            TextButton(onPressed: () { launchUrl(Uri.parse('https://www.techway.tech/')); },
            child: Text('https://www.techway.tech/',style: TextStyle(fontSize: 18,color: Colors.red,), textAlign: TextAlign.start,)),



          ],
        ),
      ),
    );
  }
}
