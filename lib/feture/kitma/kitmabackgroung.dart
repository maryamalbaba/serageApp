import 'package:finalserage/core/theme/background.dart';
import 'package:finalserage/core/theme/theme.dart';
import 'package:finalserage/feture/kitma/addKitma.dart';
import 'package:finalserage/view/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Kitmaebackground extends StatefulWidget {
   Kitmaebackground({super.key});

  @override
  State<Kitmaebackground> createState() => _KitmaebackgroundState();
}

class _KitmaebackgroundState extends State<Kitmaebackground> {
  @override
  Widget build(BuildContext context) {
    return background(isLight: Provider.of<ThemePageProvider>(context).isLighEnable,
     page: Add_Kitma_Page(),);
  }
}