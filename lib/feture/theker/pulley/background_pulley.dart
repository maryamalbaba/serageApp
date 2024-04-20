import 'package:finalserage/core/theme/background.dart';
import 'package:finalserage/core/theme/theme.dart';
import 'package:finalserage/feture/theker/pulley/singlePulley.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class background_Singlepulley extends StatelessWidget {
   background_Singlepulley({super.key});

  @override
  Widget build(BuildContext context) {
    return background (isLight: Provider.of<ThemePageProvider>(context).isLighEnable, page: singlePulley(),);
  }
}