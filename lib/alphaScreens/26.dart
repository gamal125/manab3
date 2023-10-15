import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../allAlphabiticScreen/allAlphabiticScreen.dart';
import '../componants/componants.dart';

class MyWidget26 extends StatefulWidget {
  @override
  _MyWidget26State createState() => _MyWidget26State();
}

class _MyWidget26State extends State<MyWidget26> {
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
    if(index==0){_audioPlayer.play(AssetSource('images/26/one-t.mp3'));}
    else if(index==1){_audioPlayer.play(AssetSource('images/26/two-t.mp3'));}
    else if(index==2){_audioPlayer.play(AssetSource('images/26/three-t.mp3'));}
    else if(index==3){_audioPlayer.play(AssetSource('images/26/four-t.mp3'));}
    else if(index==4){_audioPlayer.play(AssetSource('images/26/five-t.mp3'));}
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
                padding: EdgeInsets.only(top: 10,left: 20),
                child: InkWell(onTap: (){navigateTo(context, AllAlphabiticScreen());},child: CircleAvatar(backgroundImage: AssetImage('assets/images/homeIcon.png'),)),
              )],),
              Expanded(
                  child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [


                    index==0?_1_1():index==1?_1_2():index==2?_1_3():index==3?_1_4():index==4?_1_5():index==5?_1_6():_1_7()






                  ],)),

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Padding(
                  padding: EdgeInsets.only(left: 20,bottom: 15),
                  child: InkWell(onTap: (){setState(() {
                    index<6? index++:null;
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
      Center(child: Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/26/one-t.png'),fit: BoxFit.fill, )
        ),
      ),),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [


        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/one-1.mp3'));}, imageUrl: 'assets/images/26/one-4.png'),

        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/one-1.mp3'));}, imageUrl: 'assets/images/26/one-3.png'),

        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/one-1.mp3'));}, imageUrl: 'assets/images/26/one-2.png'),

        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/one-1.mp3'));}, imageUrl: 'assets/images/26/one-1.png'),





      ]),
    ],
  );
  Widget _1_2()=>Column(
    children: [
      Center(child: Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/26/two-t.png'),fit: BoxFit.fill, )
        ),
      ),),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/two-1.mp3'));}, imageUrl: 'assets/images/26/two-4.png'),
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/two-1.mp3'));}, imageUrl: 'assets/images/26/two-3.png'),
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/two-1.mp3'));}, imageUrl: 'assets/images/26/two-2.png'),
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/two-1.mp3'));}, imageUrl: 'assets/images/26/two-1.png'),


      ]),
    ],
  );
  Widget _1_3()=>Column(
    children: [
      Center(child: Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/26/three-t.png'),fit: BoxFit.fill, )
        ),
      ),),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/three-1.mp3'));}, imageUrl: 'assets/images/26/three-4.png'),
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/three-1.mp3'));}, imageUrl: 'assets/images/26/three-3.png'),
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/three-1.mp3'));}, imageUrl: 'assets/images/26/three-2.png'),
        alphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/three-1.mp3'));}, imageUrl: 'assets/images/26/three-1.png'),


      ]),
    ],
  );
  Widget _1_4()=>Column(
    children: [
      Center(child: Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/26/four-t.png'),fit: BoxFit.fill, )
        ),
      ),),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/four-5.mp3'));}, imageUrl: 'assets/images/26/four-6.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/four-5.mp3'));}, imageUrl: 'assets/images/26/four-5.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/four-3.mp3'));}, imageUrl: 'assets/images/26/four-4.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/four-3.mp3'));}, imageUrl: 'assets/images/26/four-3.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/four-1.mp3'));}, imageUrl: 'assets/images/26/four-2.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/four-1.mp3'));}, imageUrl: 'assets/images/26/four-1.png'),




      ]),
    ],
  );
  Widget _1_5()=>Column(
    children: [
      Center(child: Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/26/five-t.png'),fit: BoxFit.fill, )
        ),
      ),),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/five-5.mp3'));}, imageUrl: 'assets/images/26/five-6.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/five-5.mp3'));}, imageUrl: 'assets/images/26/five-5.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/five-3.mp3'));}, imageUrl: 'assets/images/26/five-4.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/five-3.mp3'));}, imageUrl: 'assets/images/26/five-3.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/five-1.mp3'));}, imageUrl: 'assets/images/26/five-2.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/five-1.mp3'));}, imageUrl: 'assets/images/26/five-1.png'),


      ]),
    ],
  );
  Widget _1_6()=>Column(
    children: [
      Center(child: Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/t.PNG'),fit: BoxFit.fill, )
        ),
      ),),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/six-6.mp3'));}, imageUrl: 'assets/images/26/six-6.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/six-5.mp3'));}, imageUrl: 'assets/images/26/six-5.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/six-4.mp3'));}, imageUrl: 'assets/images/26/six-4.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/six-3.mp3'));}, imageUrl: 'assets/images/26/six-3.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/six-2.mp3'));}, imageUrl: 'assets/images/26/six-2.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/six-1.mp3'));}, imageUrl: 'assets/images/26/six-1.png'),




      ]),
    ],
  );
  Widget _1_7()=>Column(
    children: [
      Center(child: Container(
        height: 60,
        width: 300,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/t2.PNG'),fit: BoxFit.fill, )
        ),
      ),),
      SizedBox(height: 30,),
      Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/seven-6.mp3'));}, imageUrl: 'assets/images/26/seven-6.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/seven-5.mp3'));}, imageUrl: 'assets/images/26/seven-5.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/seven-4.mp3'));}, imageUrl: 'assets/images/26/seven-4.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/seven-3.mp3'));}, imageUrl: 'assets/images/26/seven-3.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/seven-2.mp3'));}, imageUrl: 'assets/images/26/seven-2.png'),
        smallalphaSoundButton(onpressd: (){_audioPlayer.play(AssetSource('images/26/seven-1.mp3'));}, imageUrl: 'assets/images/26/seven-1.png'),


      ]),
    ],
  );


}


