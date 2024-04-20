// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:finalserage/feture/kitma/kitmabackgroung.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class background extends StatefulWidget {
  bool isLight;
  final Widget page;
  final Widget? floa;
  background({
    Key? key,
    required this.isLight,
    required this.page,
    this.floa,
  }) : super(key: key);

  @override
  State<background> createState() => _backgroundState();
}

class _backgroundState extends State<background> {
  @override
  Widget build(BuildContext context) {
    print(DateTime.now().minute);
    return Scaffold(
      floatingActionButton: widget.floa,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                widget.isLight
                    ? 'assets/images/fajeerbackgraound.jpg'
                    : "assets/images/backgroundorange.jpg",
              ),
              fit: BoxFit.fill),
        ),
        child: widget.page,
      ),
    );
  }
}
