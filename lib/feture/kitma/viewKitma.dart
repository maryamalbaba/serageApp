import 'package:finalserage/core/components/myWidget.dart';
import 'package:finalserage/core/models/kitmaMode.dart';
import 'package:finalserage/core/services/Kitma_services/getKitma.dart';
import 'package:flutter/material.dart';

class View_Kitma_Page extends StatelessWidget {
  View_Kitma_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getKitma(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<KitmaModel> temp = snapshot.data as List<KitmaModel>;
          List<KitmaModel> isProiratiyTrue =
              temp.where((element) => element.isProiratiy == true).toList();
          List<KitmaModel> isProiratiyFalse =
              temp.where((element) => element.isProiratiy == false).toList();

          List<KitmaModel> temp2 = isProiratiyTrue..addAll(isProiratiyFalse);

          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: temp.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ADD_KItma_Container(EndDate: temp2[index].endDate, startDate: temp2[index].startDate, neahText: temp2[index].neah,),
                        );
                      }))
            ],
          );
        } else {
          return Center(child: Text("Some thing went error"));
        }
      },
    );
  }
}
