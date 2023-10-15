import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mnab3/aboutScreen/aboutScreen.dart';
import 'package:mnab3/allAlphabiticScreen/allAlphabiticScreen.dart';
import 'package:mnab3/instructionsScreen/instructionsScreen.dart';
import 'componants/componants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/main_bg.png'),fit: BoxFit.fill)
        ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: 210,),

                  Padding(
                    padding: const EdgeInsets.only(right: 120.0),
                    child: defaultMaterialButton(function: (){
                      navigateTo(context, const AllAlphabiticScreen());
                    }, text: 'المستوي الثاني', color: Colors.pink),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0 ,top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        defaultMaterialButton2(function: (){navigateTo(context, AboutScreen());}, text: 'نبذة عنا', color: HexColor('#407A81')),
                        const SizedBox(width: 20,),
                        defaultMaterialButton2(function: (){navigateTo(context, InstructionsScreen());}, text: 'تعليمات', color: HexColor('#407A81')),

                      ],),
                  )

                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
