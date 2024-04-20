// ignore_for_file: public_member_api_docs, sort_constructors_first



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import 'package:finalserage/core/colors/mycolors.dart';
import 'package:finalserage/core/theme/theme.dart';

class mydesignleft extends StatelessWidget {
  mydesignleft({super.key});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Container(
          width: 49.9,
          height: 49.9,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
                // "assets/images/design.png"
                Provider.of<ThemePageProvider>(context).isLighEnable
                    ? "assets/images/fajeerdesign.png"
                    : "assets/images/design.png"),
          ))),
    );
  }
}

class mydesignRight extends StatelessWidget {
  mydesignRight({super.key});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Container(
          width: 49.9,
          height: 49.9,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
                // "assets/images/design.png"
                Provider.of<ThemePageProvider>(context).isLighEnable
                    ? "assets/images/fajeerdesign.png"
                    : "assets/images/design.png"),
          ))),
    );
  }
}

Widget circuler_container(
        {required String image,
        required String text,
        double? height,
        double? width}) =>
    Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: offWhite,

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
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              ),
            ),
          ),
          Center(
            child: Container(
                height: 33,
                width: 72,
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF412B2D)),
                )),
          ),
        ],
      ),
    );

Widget WhiteTextfield({
  required TextEditingController controller,
  required TextInputType KeyBoardType,
  int? maxLines,
  int? minLine,
  double? width,
  double? hieght,
  Function()? onTap,
}) =>
    Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: TextField(
          onTap: onTap,
          maxLines: maxLines,
          minLines: minLine,
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );

Widget bottomContainer({Widget? its_child}) => Container(
      width: 257,
      height: 42,
      decoration: BoxDecoration(
          color: offWhite, borderRadius: BorderRadius.circular(10)),
      child: its_child,
    );
Widget myTextField(
    {required TextEditingController myController,
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

Widget NoteContainer() => Container(
      width: 309,
      height: 151,
      decoration: BoxDecoration(
        color: offWhite,
        borderRadius: BorderRadius.circular(10),
      ),
    );

// class dropWidget extends StatefulWidget {
//   dropWidget({super.key});

//   @override
//   State<dropWidget> createState() => _dropWidgetState();
// }

// class _dropWidgetState extends State<dropWidget> {
//   String? selectedValue;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: DropdownButton(
//             hint: Text("اختر"),
//             value: selectedValue,
//             items: [
//               DropdownMenuItem(value: "قضاء حاجة", child: Text("قضاء حاجة")),
//               DropdownMenuItem(
//                 value: "تفريج هم",
//                 child: Text("تفريج هم"),
//               ),
//               DropdownMenuItem(value: " شفاء مريض", child: Text(" شفاء مريض")),
//               DropdownMenuItem(
//                   value: "على روح مسلم", child: Text("على روح مسلم")),
//               DropdownMenuItem(value: " تيسير أمر", child: Text(" تيسير أمر")),
//             ],
//             onChanged: (value) {
//               setState(() {
//                 selectedValue = value!;
//               });
//             }),
//       ),
//     );
//   }
// }

class ADD_KItma_Container extends StatelessWidget {
  ADD_KItma_Container({
    Key? key,
    required this.EndDate,
    required this.startDate,
    required this.neahText,
  }) : super(key: key);
  final String EndDate;
  final String neahText;
  final String startDate;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 309,
      height: 195,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: offWhite),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  neahText,
                  style: TextStyle(fontSize: 25),
                ),
              ),
              
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/note.png"))),
               
              )
            ],
          ),
          Divider(
            endIndent: 10,
            indent: 10,
            color: Color(0XFF5C3B13),
          ),
          SizedBox(
            width: 300,
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 80,
                  //  height: 22,
                  child: Column(
                    //   mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("تاريخ الانتهاء"),
                      Text(EndDate, style: TextStyle(color: Color(0xFFB99470)))
                    ],
                  ),
                ),
                SizedBox(
                  width: 100,
                  //   height: 30,
                  child: Column(
                    //   mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("تاريخ البدء"),
                      Text(
                        startDate,
                        style: TextStyle(color: Color(0xFFB99470)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Add_theker_container extends StatelessWidget {
  Add_theker_container({
    Key? key,
    required this.name,
    required this.end_date,
       required this.fullnum,
       required this.start_date,
        required this.achievment,


       
  }) : super(key: key);
  final String name;
  final String end_date;
  final String fullnum;
  final String start_date;
  final String achievment;
  
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 309,
        height: 195,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: offWhite),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 25),
                ),
              ),
              //Padding(
              // padding: const EdgeInsets.only(botto),
              //  child:
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/note.png"))),
                // ),
              )
            ],
          ),
          Divider(
            endIndent: 10,
            indent: 10,
            color: Color(0XFF5C3B13),
          ),
          SizedBox(
            width: 300,
            child: Row(
              children: [
                SizedBox(
                  
                //  height: 50,
                    width: 200
                  , child: Column(
                  children: [
                    Text("تاريخ الانتهاء"),
                  Text(end_date),
                  Text("المفروض"),
                  Text(fullnum)
                  ],
                )),
                Container(),
                SizedBox(
                  width: 80,
                 // height: 70, 
                  child: Column(children: [

                  Text("تاريخ البدء"),
                  Text(start_date),
                  Text("المنجز"),
                  Text(achievment)

                ],))
              ],
            ),
          )
        ]));
  }
}

class ShareContainer extends StatelessWidget {
  ShareContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.share,
                color: Colors.white,
              ),
              Text(
                "مشاركة",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              )
            ],
          ),
          width: 110,
          height: 30,
          decoration: BoxDecoration(
              color: lightbrown, borderRadius: BorderRadius.circular(5)),
        ),
        Positioned(
          top: -30,
          // right: 10,
          left: 70,
          child: Container(
            width: 30,
            height: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/sparkel.png"))),
          ),
        )
      ],
    );
  }
}
