import 'package:finalserage/core/theme/modetheme.dart';
import 'package:finalserage/core/theme/theme.dart';
import 'package:finalserage/feture/kitma/addKitma.dart';
import 'package:finalserage/feture/kitma/kitmabackgroung.dart';
import 'package:finalserage/view/homePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (BuildContext context) 
       => ThemePageProvider()..ChangeMode(),
      
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Provider.of<ThemePageProvider>(context).isLighEnable
            ? modetheme.lightmode
            : modetheme.darkmode
            ,home: Kitmaebackground(),
            
            );
  }
}
