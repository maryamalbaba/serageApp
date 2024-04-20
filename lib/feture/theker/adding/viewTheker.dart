import 'package:finalserage/core/colors/mycolors.dart';
import 'package:finalserage/core/components/myWidget.dart';
import 'package:finalserage/core/models/theker.dart';
import 'package:finalserage/core/models/thekerBack.dart';
import 'package:finalserage/core/services/kitmaService/theker_services/getTheker.dart';
import 'package:finalserage/core/theme/background.dart';
import 'package:finalserage/core/theme/theme.dart';
import 'package:finalserage/feture/theker/adding/addTheker.dart';
import 'package:finalserage/view/flowPages.dart/flowbytello.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class view_theker extends StatelessWidget {
  view_theker({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: get_theker(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ThekerModelll> temp5 = snapshot.data as List<ThekerModelll>;

          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: temp5.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetialsPaeg(),
                                ));
                          },
                          child: Add_theker_container(name: temp5[index].name, end_date: '', fullnum: temp5[index].Fullnum.toString(), start_date: '', achievment: temp5[index].achievment.toString(),)),
                    );
                  },
                ),
              )
            ],
          );
        } else {
          return Text("Error");
        }
      },
    );
  }
}

class DetialsPaeg extends StatelessWidget {
  const DetialsPaeg({super.key});

  @override
  Widget build(BuildContext context) {
    return background(

        isLight: Provider.of<ThemePageProvider>(context).isLighEnable,
        page: Column(
          children: [
            SizedBox(
              width: 100,
              height: 200,
              child: PageView(
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    margin: EdgeInsets.all(20),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                Image.asset('assets/images/note.png').image)),
                  ),
                  
                  Scaffold(
                    backgroundColor: Colors.brown,
                    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
                    floatingActionButton: ThekerFlow(),
                    
                  )
                ],
              ),
            )
          ],
        ));
  }
}
