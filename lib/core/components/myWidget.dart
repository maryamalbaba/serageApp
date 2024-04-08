import 'package:finalserage/core/colors/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

Widget mydesignleft() => RotatedBox(
      quarterTurns: 3,
      child: Container(
          width: 49.9,
          height: 49.9,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/note.png"),
          ))),
    );
Widget mydesignRight() => RotatedBox(
      quarterTurns: 1,
      child: Container(
          width: 49.9,
          height: 49.9,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/note.png"),
          ))),
    );

Widget circuler_container({required String image, required String text,double ?height,double  ?width}) =>
 Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: beigecolor,
//image: DecorationImage(image: AssetImage(image))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                height: 38,
                width: 38,
                decoration:
                    BoxDecoration(image: DecorationImage(image: AssetImage(image))),
              ),
            ),
          ),
       
           
           Align(
            alignment: Alignment.center,
             child: Container(
                height: 29,
                width: 72,
                child: Text(text,style: TextStyle(fontSize: 20,color:Color(0xFF412B2D) ),)),
           ),
         
        ],
      ),
    );
    Widget WhiteTextfield(
      {required TextEditingController controller,
      required TextInputType KeyBoardType,
      int? maxLines,
      int ?minLine,
      double? width,
      double? hieght,
      }
    )=>Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: TextField(
        maxLines: maxLines,
        minLines: minLine,
          decoration: InputDecoration(
            border: InputBorder.none
          ),
        ),
      ),
    );
Widget bottomContainer({Widget ?its_child})=>Container(
  width: 257,
  height: 42,
  decoration: BoxDecoration(color: beigecolor,
  borderRadius: BorderRadius.circular(10)),
  child:its_child ,
);
Widget myTextField(
    {
      required TextEditingController myController,
    required String HintText,
    required TextInputType keyboardtype}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      minLines: 1,
      maxLines: 5,
      controller: myController,
      keyboardType: keyboardtype,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: HintText,
      ),
    ),
  );
}