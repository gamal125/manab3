import 'package:flutter/material.dart';

Widget defaultMaterialButton({
  required Function function,
  required String text,
  required Color color,
  double width = 150,
  double height = 45.0,
  double radius = 15.0,
  bool isUpperCase = true,
  Function? onTap,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: color,
        //  color: background,
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Center(
          child: Text(
            textAlign:TextAlign.start,

            isUpperCase ? text.toUpperCase() : text,
            style: const TextStyle(

                color:  Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
Widget defaultMaterialButton2({
  required Function function,
  required String text,
  required Color color,
  double width = 150,
  double height = 40.0,
  double radius = 20.0,
  bool isUpperCase = true,
  Function? onTap,
}) =>
    Container(
      width: width,
      height: height,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: color,
        //  color: background,
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Center(
          child: Text(
            textAlign:TextAlign.start,

            isUpperCase ? text.toUpperCase() : text,
            style: const TextStyle(

                color:  Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );

void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);
Widget alphaButton({
  required  Function onpressd,
  required String imageUrl,
})=>InkWell(
onTap: (){onpressd();},
child: Padding(
  padding: const EdgeInsets.only(right: 20.0),
  child:   Container( height: 64,width: 75,  decoration: BoxDecoration(
  image: DecorationImage(image: AssetImage(imageUrl),fit: BoxFit.fill,)

  ),),
),
);
Widget alphaSoundButton({
  required  Function onpressd,
  required String imageUrl,
})=>InkWell(
  onTap: (){onpressd();},
  child: Padding(
    padding: const EdgeInsets.only(right: 0.0),
    child:   Container( height: 125,width: 135,  decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imageUrl),fit: BoxFit.contain,)

    ),),
  ),
);
Widget smallalphaSoundButton({
  required  Function onpressd,
  required String imageUrl,
})=>InkWell(
  onTap: (){onpressd();},
  child: Padding(
    padding: const EdgeInsets.only(right: 0.0),
    child:   Container( height: 100,width: 100,  decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imageUrl),fit: BoxFit.fill,)

    ),),
  ),
);
Widget vsmallalphaSoundButton({
  required  Function onpressd,
  required String imageUrl,
})=>InkWell(
  onTap: (){onpressd();},
  child: Padding(
    padding: const EdgeInsets.only(right: 5.0),
    child:   Container( height:70,width:70,  decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imageUrl),fit: BoxFit.fill,)

    ),),
  ),
);