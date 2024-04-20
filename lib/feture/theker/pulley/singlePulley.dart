import 'package:finalserage/core/colors/mycolors.dart';
import 'package:finalserage/core/theme/theme.dart';
import 'package:finalserage/feture/theker/pulley/onePerson.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

TextEditingController textEditingController=TextEditingController();
class singlePulley extends StatefulWidget {
  const singlePulley({super.key});

  @override
  State<singlePulley> createState() => _singlePulleyState();
}

class _singlePulleyState extends State<singlePulley> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        
         Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            
            image: DecorationImage(image:AssetImage("assets/images/border_container.png"))
          ), 
           child:Center(child: Text(tapnum2,style: TextStyle(color: Colors.white),)),
          
          // TextField(
          //   controller:textEditingController ,
          //   onChanged: (value) {
          //     setState(() {
          //       textEditingController.value=tapnum;
          //     });
          //   },
          // ),
          ),
        /////////
        Container(
          width: 590,
          height: 590,
          decoration: BoxDecoration(shape: BoxShape.circle, color: offWhite),
          child: Stack(
            children: [
              Circle(),
              Center(
                child: Container(
                  width: 250,
                  height: 255,
                  decoration: BoxDecoration(
                    color:
                    Provider.of<ThemePageProvider>(context).isLighEnable?
                 Color(0xFF9F2907D69): beigeColor ,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                      //  color: Colors.amber,
                        shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                              
                                "assets/images/mandela.png"))),
                    
                    child: Center(
                      child: Container(
        
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                          color: offWhite,
                          shape: BoxShape.circle),
                          child: Container(
                            decoration: BoxDecoration(boxShadow:[
                              BoxShadow(
                                blurRadius:50,
                                offset:Offset(0,0),
                                spreadRadius:BorderSide.strokeAlignOutside
                              )
                            ]),
                            width: 40,
                            height: 40,
                            child: Center(
                              child: Column(children: [
                                RotatedBox(
                                  quarterTurns: 4,
                                  child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                 
                                  image: DecorationImage(image: AssetImage("assets/images/tap.png"))  
                                  ),
                                                            ),
                                ),
                              Text("انقر")
                              ]
                              ,),
                            ),
                            ),
                      ),
                    ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
class acsses_num{
  final todo=List.generate(indexList.length, (index) => "$index");
}