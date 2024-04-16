// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:finalserage/core/colors/mycolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:finalserage/core/components/myWidget.dart';

class suraFlow extends StatefulWidget {
  const suraFlow({super.key});

  @override
  State<suraFlow> createState() => _suraFlowState();
}

class _suraFlowState extends State<suraFlow>
    with SingleTickerProviderStateMixin {
  late AnimationController controller2;

  void initState() {
    controller2 =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  List<Widget> sura_List_Container = [
    circuler_container(
        image: "assets/images/privateSura.png", text: " سورة\n  خاصة",height:95 ,width:100),
    circuler_container(
        image: "assets/images/publicSura.png", text: "سورة\n  عامة ",height:95 ,width:100),
           circuler_container(
        image: "assets/images/sura.png", text: "سورة",height:95 ,width:100)
 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Flow(
        delegate: HorizentalDelegate2(controller: controller2),
        children: List.generate(
            sura_List_Container.length,
            (index) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: InkWell(
                    onTap: () {
                      controller2.status == AnimationStatus.completed
                          ? controller2.reverse()
                          : controller2.forward();
                    },
                    child: sura_List_Container[index],
                  ),
                )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: brownColor,
              width: 300,
              height: 300,
            ),
          )
        ],
      ),
    );
  }
}

class HorizentalDelegate2 extends FlowDelegate {
  AnimationController controller;
  HorizentalDelegate2({
    required this.controller,
  }): super(repaint: controller);
  @override
  void paintChildren(FlowPaintingContext context) 
  {
    var size=context.getChildSize(0);
    for(int i=0;i<context.childCount;++i){
      context.paintChild(i,transform: Matrix4.translationValues(0, i*size!.width*controller.value, 0));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
   return false;
  }
}
