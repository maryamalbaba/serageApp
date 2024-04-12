// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class background extends StatefulWidget {
  bool isLight ;
  final Widget page;
  background({
    Key? key,
    required this.isLight,
 required this.page,
  }) : super(key: key);

  @override
  State<background> createState() => _backgroundState();
}

class _backgroundState extends State<background> {

  
  @override
  Widget build(BuildContext context) {
    print(DateTime.now().minute);
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                 widget.isLight   ? 'assets/images/fajeerbackgraound.jpg' : "assets/images/backgroundorange.jpg",
                ),
                fit: BoxFit.fill))
                ,
                child: widget.page,
  
      ),
    );
  }
}
