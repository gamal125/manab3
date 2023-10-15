import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../componants/componants.dart';
import '../main.dart';


class InstructionsScreen extends StatelessWidget {
  const InstructionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/background.png'),fit: BoxFit.cover,opacity:0.05  )
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(children: [
              Padding(
                padding: EdgeInsets.only(top: 35.0,left: 15),
                child: InkWell(onTap: (){navigateTo(context, const MyHomePage());},child: CircleAvatar(backgroundImage: AssetImage('assets/images/homeIcon.png'),)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0,left: 250),
                child: Text('تعليمات',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: HexColor('#804A9D'),), textAlign: TextAlign.start,),),


            ],),
            Padding(
              padding: EdgeInsets.only(top: 10.0,right: 40,left: 40),
              child: Text('المستوى الثاني يصلح للطلاب بعد سن الخامسة',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),textAlign: TextAlign.center),),
            Padding(
              padding: EdgeInsets.only(top: 10.0,right: 40,left: 40),
              child: Text('الإلتزام بالترتيب في التدريس حسب ترتيب الحروف',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),textAlign: TextAlign.center),),
            Padding(
              padding: EdgeInsets.only(top: 10.0,right: 40,left: 40),
              child: Text('الدروس الأولى تحتاج الى وقت أطول حتى تترسخ القاعدة لدى الطفل وكلما تقدم في الدروس تسهلت الدراسة وقصر الوقت',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.red),textAlign: TextAlign.center),),




          ],
        ),
      ),
    );
  }
}
