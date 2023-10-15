import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../allAlphabiticScreen/allAlphabiticScreen.dart';
import '../componants/componants.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late AudioPlayer _audioPlayer;
  int index=0;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(index==0){_audioPlayer.play(AssetSource('images/1/1-t.mp3'));}
    else if(index==1){_audioPlayer.play(AssetSource('images/1/two-t.mp3'));}
    else if(index==2){_audioPlayer.play(AssetSource('images/1/three-t.mp3'));}
    else if(index==3){_audioPlayer.play(AssetSource('images/1/four-t.mp3'));}
    else if(index==4){_audioPlayer.play(AssetSource('images/1/five-t.mp3'));}
    else{}
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,

          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/background.png'),fit: BoxFit.fill,opacity:0.1 )
          ),
          child:  Column(
            children: [
              Row(children: [Padding(
                padding: EdgeInsets.only(left: 20,top: 10),
                child: InkWell(onTap: (){navigateTo(context, AllAlphabiticScreen());},child: CircleAvatar(backgroundImage: AssetImage('assets/images/homeIcon.png'),)),
              )],),
              Expanded(
                  child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [


                    index==0?_1_1():index==1?_1_2():index==2?_1_3():index==3?_1_4():_1_5()
                    





              ],)),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                  padding: EdgeInsets.only(left: 20,bottom: 15),
                  child: InkWell(onTap: (){setState(() {
                    index<4? index++:null;
                  });},child: CircleAvatar(backgroundImage: AssetImage('assets/images/backIcon.png'),)),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20,bottom: 15),
                  child: InkWell(onTap: (){setState(() {

                    index>0? index--:null;
                  });},child: CircleAvatar(backgroundImage: AssetImage('assets/images/frontIcon.png'),)),
                )
              ],)
            ],

          ),
        ),
      ),
    );
  }
Widget _1_1()=>Column(
  children: [
      Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/1/1_t.png'),fit: BoxFit.fill, )
        ),
      ),
    SizedBox(height: 30,),
        Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [



      alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/1_1.mp3'));}, imageUrl: 'assets/images/1/1_1.png'),

      alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/1_1.mp3'));}, imageUrl: 'assets/images/1/1_2.png'),

      alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/1_1.mp3'));}, imageUrl: 'assets/images/1/1_1.png'),

      alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/1_1.mp3'));}, imageUrl: 'assets/images/1/1_2.png'),





    ]),
  ],
);
  Widget _1_2()=>Column(
    children: [
      Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/1/two-t.png'),fit: BoxFit.fill, )
        ),
      ),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/two-1.mp3'));}, imageUrl: 'assets/images/1/two-2.png'),
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/two-1.mp3'));}, imageUrl: 'assets/images/1/two-1.png'),
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/two-1.mp3'));}, imageUrl: 'assets/images/1/two-2.png'),
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/two-1.mp3'));}, imageUrl: 'assets/images/1/two-1.png'),


      ]),
    ],
  );
  Widget _1_3()=>Column(
    children: [
      Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/1/three-t.png'),fit: BoxFit.fill, )
        ),
      ),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/three-1.mp3'));}, imageUrl: 'assets/images/1/three-2.png'),
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/three-1.mp3'));}, imageUrl: 'assets/images/1/three-1.png'),
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/three-1.mp3'));}, imageUrl: 'assets/images/1/three-2.png'),
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/three-1.mp3'));}, imageUrl: 'assets/images/1/three-1.png'),


      ]),
    ],
  );
  Widget _1_4()=>Column(
    children: [
      Center(child: Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/1/four-t.png'),fit: BoxFit.fill, )
        ),
      ),),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/four-5.mp3'));}, imageUrl: 'assets/images/1/four-6.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/four-5.mp3'));}, imageUrl: 'assets/images/1/four-5.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/four-3.mp3'));}, imageUrl: 'assets/images/1/four-4.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/four-3.mp3'));}, imageUrl: 'assets/images/1/four-3.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/four-1.mp3'));}, imageUrl: 'assets/images/1/four-2.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/four-1.mp3'));}, imageUrl: 'assets/images/1/four-1.png'),




      ]),
    ],
  );
  Widget _1_5()=>Column(
    children: [
      Center(child: Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/1/five-t.png'),fit: BoxFit.fill, )
        ),
      ),),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/five-5.mp3'));}, imageUrl: 'assets/images/1/five-6.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/five-5.mp3'));}, imageUrl: 'assets/images/1/five-5.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/five-3.mp3'));}, imageUrl: 'assets/images/1/five-4.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/five-3.mp3'));}, imageUrl: 'assets/images/1/five-3.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/five-1.mp3'));}, imageUrl: 'assets/images/1/five-2.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/1/five-1.mp3'));}, imageUrl: 'assets/images/1/five-1.png'),


      ]),
    ],
  );


}


