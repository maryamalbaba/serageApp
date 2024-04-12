import 'package:finalserage/core/colors/mycolors.dart';
import 'package:finalserage/core/components/myWidget.dart';
import 'package:finalserage/core/mytext/mytext.dart';
import 'package:finalserage/core/theme/background.dart';
import 'package:finalserage/core/theme/theme.dart';
import 'package:finalserage/view/flowbytello.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return background(isLight: Provider.of<ThemePageProvider>(context).isLighEnable, page: HomePage2(),);
  }
}
class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 100,
            width: 290,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: mydesignleft(),
                ),
                Container(
                    height: 70,
                    width: 90,
                    child: Center(
                        child: Text(
                      serage,
                      style: TextStyle(
                           color:
                          Provider.of<ThemePageProvider>(context).isLighEnable
            ? lightOrange
           
            :  brownColor, 
                          fontWeight: FontWeight.w400,
                          fontSize: 30),
                    ))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: mydesignRight(),
                ),
              ],
            ),
          ),
        ),

        Stack(
          alignment:Alignment.topRight,
          clipBehavior: Clip.none,
          children: [Padding(
            padding: const EdgeInsets.all(8.0),
            child: NoteContainer(),
          ),
          Positioned(
            top: -20,
            right: 0,
            child: Container(
              clipBehavior: Clip.antiAlias,
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape:BoxShape.circle ,
              color: beigecolor,
                image: DecorationImage(image: AssetImage("assets/images/note.png"),fit:BoxFit.fill)),)),
                Positioned(
                  top:10,
                  // bottom: 10,
                   right: 5,
                  left: 5,
                  child: Text("عند الفجر سوف يتم عرض فقط الختم الفجرية للمستخدم\n وستوضع باقي الختم بالمحفوظات وباقي\n أوقات النهار بالعكس"
                  ,style: TextStyle(color: brownColor,fontSize: 18),
                  ))
          ]
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 348,
                height: 122,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:Provider.of<ThemePageProvider>(context).isLighEnable?
                   redbrown:browcontainer
                  
                  
                  ),),
            ),
            // Column(children: [
            
            //   HomePage4()
            // ],)
            ],
        )
        
      ],
    );
    
  }
}