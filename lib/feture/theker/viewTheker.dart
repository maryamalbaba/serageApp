import 'package:finalserage/core/components/myWidget.dart';
import 'package:finalserage/core/models/theker.dart';
import 'package:finalserage/core/services/kitmaService/theker_services/getTheker.dart';
import 'package:finalserage/feture/theker/addTheker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class view_theker extends StatelessWidget {
  view_theker({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: get_theker(),
      builder: (context, snapshot) {
        if(snapshot.hasData){
      List<thekerModel> temp5 = snapshot.data as List<thekerModel>;
          
          return Column(

           children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: temp5.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: Add_theker_container(name: temp5[index].name),
                        );
                      }))
            ],
        );}
        else{return Text("Error");}
      },
    );
  }
}
