// import 'package:flutter/material.dart';
// import 'dart:math' as math;

// class Person extends StatefulWidget {
//   const Person({Key? key});

//   @override
//   _PersonState createState() => _PersonState();
// }

// List<String> index = ["1", "2", "3", "4", "5", "6", "7", "8", "9", '10'];

// class _PersonState extends State<Person> {
//   double scrollPosition = 0.0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           width: 300,
//           height: 300,
//           child: GestureDetector(
//             onHorizontalDragUpdate: (details) {
//               setState(() {
//                 scrollPosition += details.delta.dx;
//               });
//             },
//             child: CustomPaint(
//               painter: CirclePainter(
//                 containerCount: index.length,
//                 containerColor: Colors.pink,
//                 containerRadius: 25,
//                 containerTextSize: 20,
//                 scrollPosition: scrollPosition,
//               ),
//               child: InkWell(
//                 onTap: () {
//                   final pressedIndex = ((scrollPosition / (2 * math.pi)) * index.length).round();
//                   if (pressedIndex >= 0 && pressedIndex < index.length) {
//                     print('Pressed index: $pressedIndex');
//                   }
//                 },
//                 child: Container(),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CirclePainter extends CustomPainter {
//   final int containerCount;
//   final Color containerColor;
//   final double containerRadius;
//   final double containerTextSize;
//   final double scrollPosition;

//   CirclePainter({
//     required this.containerCount,
//     required this.containerColor,
//     required this.containerRadius,
//     required this.containerTextSize,
//     required this.scrollPosition,
//   });

//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = Offset(size.width / 2, size.height / 2);
//     final radius = size.width / 2;

//     final paint = Paint()..color = containerColor;

//     for (int index = 0; index < containerCount; index++) {
//       final double angle = (2 * math.pi * index) / containerCount + scrollPosition;

//       final double itemX = radius * math.cos(angle);
//       final double itemY = radius * math.sin(angle);

//       final itemCenter = center.translate(itemX, itemY);

//       final containerRect = Rect.fromCircle(
//         center: itemCenter,
//         radius: containerRadius,
//       );

//       canvas.drawCircle(itemCenter, containerRadius, paint);

//       final textPainter = TextPainter(
//         text: TextSpan(
//           text: '$index',
//           style: TextStyle(
//             fontSize: containerTextSize,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         textAlign: TextAlign.center,
//         textDirection: TextDirection.ltr,
//       );

//       textPainter.layout();
//       final textOffset = Offset(
//         itemCenter.dx - textPainter.width / 2,
//         itemCenter.dy - textPainter.height / 2,
//       );
//       textPainter.paint(canvas, textOffset);
//     }
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
// }


// ///////////////////////////////////////////////////
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class Person extends StatelessWidget {
// const Person({super.key});

// @override
// Widget build(BuildContext context) {
// return Scaffold(
// body: ListWheelScrollView.useDelegate(
// itemExtent: 50,
// perspective: 0.005,
// diameterRatio: 1.2,
// physics: FixedExtentScrollPhysics(),
// childDelegate:
// ListWheelChildBuilderDelegate(
// childCount: 20,

//  builder: (context, index) {
//           return Container(
            

//             decoration: BoxDecoration(
//               color: Colors.pink,
//               shape: BoxShape.circle),
//             child: myMinute(mins: index,));
//         })));}
// }

// class MyTile extends StatelessWidget {
// MyTile({super.key});

// @override
// Widget build(BuildContext context) {
// return Container(
// color: Colors.blue,
// child: Text("Hello"),
// );
// }
// }

// class myMinute extends StatelessWidget {
// myMinute({
// Key? key,
// required this.mins,
// }) : super(key: key);
// int mins;
// @override
// Widget build(BuildContext context) {
// return Container(
// child: Center(child: Text("$mins",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)),
// );
// }
// }
import 'dart:math';

import 'package:finalserage/core/colors/mycolors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
//final  int accessnumber=0;
  String tapnum1="";
  
  String tapnum2="";
 TextEditingController textEditingControllernum=TextEditingController();
class Circle extends StatefulWidget {
  const Circle({Key? key});

  @override
  _CircleState createState() => _CircleState();
}

List<num> indexList = [41, 100, 300, 1000, 800, 200, 10];

class _CircleState extends State<Circle> {
  double scrollPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return 
      Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
              color:offWhite
          ),
        
          width: 288,
          height: 288,
          child: GestureDetector(
            onHorizontalDragUpdate: (details) {
              setState(() {
                scrollPosition += details.delta.dx;
              });
            },
            child: CustomPaint(
              painter: CirclePainter(
                containerCount: indexList.length,
                containerColor:offWhite,
                containerRadius: 20,
                containerTextSize: 20,
                scrollPosition: scrollPosition,
                
              ),
              child: Stack(
                children: List.generate(indexList.length, (accessnumber) {
                  final angle = (2* pi * accessnumber) / indexList.length + scrollPosition;
                  final double radius = 150; // radius of the circle
                  final double x = radius * math.cos(angle);
                  final double y = radius * math.sin(angle);
                  final position = Offset(150 + x, 150 + y); 
                  return Positioned(
                    left: position.dx - 25, 
                    top: position.dy - 25, 
                    child: InkWell(
                      onTap: () {
                        //  tapnum=indexList[accessnumber];
                        //  print(tapnum);
                        setState(() {
                          textEditingControllernum.text=indexList[accessnumber].toString();
                          tapnum1=textEditingControllernum.text;
                          print("tapnum1: $tapnum1");
                          if(tapnum1 !=null){
                            tapnum2=tapnum1;
                              print( " tap num2 inside if: $tapnum1");
                          }
                        });
                         print( " tapnum2 outside if: $tapnum1");
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(0, 146, 115, 115),
                        ),
                      ),
                     ),
                  );
             
                }
                
                ),
              
              ),
            ),
          ),
        ),
      );
    
  }
}

class CirclePainter extends CustomPainter {
  final int containerCount;
  final Color containerColor;
  final double containerRadius;
  final double containerTextSize;
  final double scrollPosition;

  CirclePainter({
    required this.containerCount,
    required this.containerColor,
    required this.containerRadius,
    required this.containerTextSize,
    required this.scrollPosition,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final paint = Paint()..color = containerColor;

    for (int index = 0; index < indexList.length; index++) {
      final double angle = (2 * math.pi * index) / indexList.length + scrollPosition;

      final double itemX = radius * math.cos(angle);
      final double itemY = radius * math.sin(angle);

      final itemCenter = center.translate(itemX, itemY);

      final containerRect = Rect.fromCircle(
        center: itemCenter,
        radius: containerRadius,
      );

      canvas.drawCircle(itemCenter, containerRadius, paint);

      final textPainter = TextPainter(
        text: TextSpan(
          text: '${indexList[index]}',
          style: TextStyle(
            fontSize: containerTextSize,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF372527),
          ),
        ),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      );

      textPainter.layout();
      final textOffset = Offset(
        itemCenter.dx - textPainter.width / 2,
        itemCenter.dy - textPainter.height / 2,
      );
      textPainter.paint(canvas, textOffset);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}