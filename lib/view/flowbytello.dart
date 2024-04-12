// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:finalserage/core/components/myWidget.dart';
import 'package:flutter/material.dart';

class HomePage4 extends StatefulWidget {
  const HomePage4({super.key});

  @override
  State<HomePage4> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage4>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: Duration(seconds:  1));
  }

  // List<IconData> list = [
  //   Icons.home,
  //   Icons.youtube_searched_for,
  //   Icons.reddit,
  //   Icons.facebook
  // ];


List<Widget>list_of_container=[
circuler_container(image: 'assets/images/counter.png', text: 'تسبيح',height:95 ,width:100),
circuler_container(image: 'assets/images/wearedgroub.png', text: 'جلسة ذكر ',height:95 ,width:100),
circuler_container(image: 'assets/images/race.jpg', text: 'مسابقة بِورد',height:95 ,width:100),

];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Flow(
        delegate: HorizantalDelegate(controller: controller),
        children: List.generate(
          list_of_container.length,
          (index) => Padding(
            padding: const EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                controller.status == AnimationStatus.completed
                    ? controller.reverse()
                    : controller.forward();
              },
              // child: Container(
              //   color: Colors.red,
              //   child: Icon(list[index]),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}

class HorizantalDelegate extends FlowDelegate {
  HorizantalDelegate({
    required this.controller}) 
  : super(repaint: controller);

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
