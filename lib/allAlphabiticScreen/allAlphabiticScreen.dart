import 'package:flutter/material.dart';
import 'package:mnab3/alphaScreens/10.dart';
import 'package:mnab3/alphaScreens/11.dart';
import 'package:mnab3/alphaScreens/12.dart';
import 'package:mnab3/alphaScreens/13.dart';
import 'package:mnab3/alphaScreens/14.dart';
import 'package:mnab3/alphaScreens/15.dart';
import 'package:mnab3/alphaScreens/16.dart';
import 'package:mnab3/alphaScreens/17.dart';
import 'package:mnab3/alphaScreens/18.dart';
import 'package:mnab3/alphaScreens/2.dart';
import 'package:mnab3/alphaScreens/20.dart';
import 'package:mnab3/alphaScreens/21.dart';
import 'package:mnab3/alphaScreens/22.dart';
import 'package:mnab3/alphaScreens/23.dart';
import 'package:mnab3/alphaScreens/24.dart';
import 'package:mnab3/alphaScreens/25.dart';
import 'package:mnab3/alphaScreens/26.dart';
import 'package:mnab3/alphaScreens/27.dart';
import 'package:mnab3/alphaScreens/28.dart';
import 'package:mnab3/alphaScreens/3.dart';
import 'package:mnab3/alphaScreens/4.dart';
import 'package:mnab3/alphaScreens/5.dart';
import 'package:mnab3/alphaScreens/6.dart';
import 'package:mnab3/alphaScreens/7.dart';
import 'package:mnab3/alphaScreens/8.dart';
import 'package:mnab3/alphaScreens/9.dart';
import 'package:mnab3/componants/componants.dart';
import 'package:mnab3/main.dart';

import '../alphaScreens/1.dart';
import '../alphaScreens/19.dart';

class AllAlphabiticScreen extends StatelessWidget {
  const AllAlphabiticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,

        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/background.png'),fit: BoxFit.cover,opacity:0.05  )
        ),
        child:  Column(
          children: [
            Expanded(child: Column(children: [
              Row(children: [Padding(
                padding: const EdgeInsets.only(top: 25.0,left: 15,bottom: 5),
                child: InkWell(onTap: (){navigateTo(context, const MyHomePage());},child: const CircleAvatar(backgroundImage: AssetImage('assets/images/homeIcon.png'),)),
              )], ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                alphaButton(onpressd: (){navigateTo(context, MyWidget7());}, imageUrl:'assets/images/alpha/7.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget6());}, imageUrl:'assets/images/alpha/6.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget5());}, imageUrl:'assets/images/alpha/5.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget4());}, imageUrl:'assets/images/alpha/4.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget3());}, imageUrl:'assets/images/alpha/3.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget2());}, imageUrl:'assets/images/alpha/2.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget());}, imageUrl:'assets/images/alpha/1.png'),




              ],),
              const SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                alphaButton(onpressd: (){navigateTo(context, MyWidget14());}, imageUrl:'assets/images/alpha/14.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget13());}, imageUrl:'assets/images/alpha/13.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget12());}, imageUrl:'assets/images/alpha/12.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget11());}, imageUrl:'assets/images/alpha/11.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget10());}, imageUrl:'assets/images/alpha/10.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget9());}, imageUrl:'assets/images/alpha/9.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget8());}, imageUrl:'assets/images/alpha/8.png'),




              ],),
              const SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                alphaButton(onpressd: (){navigateTo(context, MyWidget21());}, imageUrl:'assets/images/alpha/21.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget20());}, imageUrl:'assets/images/alpha/20.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget19());}, imageUrl:'assets/images/alpha/19.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget18());}, imageUrl:'assets/images/alpha/18.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget17());}, imageUrl:'assets/images/alpha/17.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget16());}, imageUrl:'assets/images/alpha/16.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget15());}, imageUrl:'assets/images/alpha/15.png'),




              ],),
              const SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                alphaButton(onpressd: (){navigateTo(context, MyWidget28());}, imageUrl:'assets/images/alpha/28.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget27());}, imageUrl:'assets/images/alpha/27.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget26());}, imageUrl:'assets/images/alpha/26.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget25());}, imageUrl:'assets/images/alpha/25.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget24());}, imageUrl:'assets/images/alpha/24.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget23());}, imageUrl:'assets/images/alpha/23.png'),
                alphaButton(onpressd: (){navigateTo(context, MyWidget22());}, imageUrl:'assets/images/alpha/22.png'),




              ],),

            ],))

          ],
        ),
      ),
    );
  }
}
