// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:finalserage/core/colors/mycolors.dart';
import 'package:finalserage/core/components/myWidget.dart';
import 'package:finalserage/view/homePage.dart';
import 'package:flutter/material.dart';

class ThekerFlow extends StatefulWidget {
  const ThekerFlow({super.key});

  @override
  State<ThekerFlow> createState() => _tassbehFlow();
}

class _tassbehFlow extends State<ThekerFlow>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  List<Widget> list_of_container_tasbeeh = [
    circuler_container(
        image: 'assets/images/counter.png',
        text: 'تسبيح',
        height: 95,
        width: 100),
    circuler_container(
        image: 'assets/images/wearedgroub.png',
        text: 'جلسة\n ذكر ',
        height: 95,
        width: 100),
    circuler_container(
        image: 'assets/images/race.png',
        text: 'مسابقة\n بِورد',
        height: 95,
        width: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: HorizantalDelegate(controller: controller),
      children: List.generate(
        list_of_container_tasbeeh.length,
        (index) => Padding(
          padding: const EdgeInsets.all(20),
          child: InkWell(
              onTap: () {
                controller.status == AnimationStatus.completed
                    ? controller.reverse()
                    : controller.forward();
              },
              child: list_of_container_tasbeeh[index]),
        ),
      ),
    );
  }
}

class HorizantalDelegate extends FlowDelegate {
  HorizantalDelegate({required this.controller}) : super(repaint: controller);

  final AnimationController controller;

  @override
  void paintChildren(FlowPaintingContext context) {
    var size = context.getChildSize(0);

    for (var i = 0; i < context.childCount; ++i) {
      context.paintChild(i,
          transform: Matrix4.translationValues(
              0, i * size!.width * controller.value, 0));
    }
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return false;
  }
}
