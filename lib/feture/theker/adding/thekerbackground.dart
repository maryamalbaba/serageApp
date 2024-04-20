import 'package:finalserage/core/colors/mycolors.dart';
import 'package:finalserage/core/components/myWidget.dart';
import 'package:finalserage/core/models/theker.dart';
import 'package:finalserage/core/models/thekerBack.dart';
import 'package:finalserage/core/mytext/mytext.dart';
import 'package:finalserage/core/services/kitmaService/theker_services/createTheker.dart';
import 'package:finalserage/core/theme/background.dart';
import 'package:finalserage/core/theme/theme.dart';
import 'package:finalserage/feture/theker/adding/addTheker.dart';
import 'package:finalserage/feture/theker/adding/viewTheker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


double sliderValue = 1000;

class Theker_Background extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return background(
      isLight: Provider.of<ThemePageProvider>(context).isLighEnable,
      page: view_theker(),
  // view_theker
      floa: FloatingActionButton(
        onPressed: () async {
          // if (isUp2) {
          //   Navigator.pop(context);
          //   isUp2 = true;
          //   bool temp3 = await creat_theker(thekerModel(
          //       name: selectedValue2,
          //       proof: "",
          //       num: sliderValue.toInt(),
          //       id: ""));
          // } else {
          showModalBottomSheet(
            context: context,
            builder: (context) => Container(
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(color: browcontainer),
              child: Column(
                children: [
                  Text(
                    "hello",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      width: 200,
                      height: 30,
                      child: StatefulBuilder(
                        builder: (BuildContext context,
                            void Function(void Function()) setState) {
                          return DropdownButton(
                              hint: Text("اختر"),
                              value: selectedValue2,
                              items: [
                                DropdownMenuItem(
                                    value: "استغفار", child: Text(" استغفار")),
                                DropdownMenuItem(
                                  value: "صلاة على النبي",
                                  child: Text(" صلاة على النبي"),
                                ),
                                DropdownMenuItem(
                                    value: "حوقلة", child: Text("  حوقلة")),
                                DropdownMenuItem(
                                    value: "بسملة", child: Text("  بسملة")),
                                DropdownMenuItem(
                                    value: "  تهليل", child: Text("تهليل")),
                                DropdownMenuItem(
                                    value: "  تكبير", child: Text("تكبير")),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  selectedValue2 = value!;
                                });
                              });
                        },
                      ),
                    ),
                  ),
                  Text(
                    "مدة الختمة",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),

                  Container(
                    color: Colors.white,
                    width: 200,
                    height: 30,
                  ),
                  Text(
                    " العدد المفروض",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),

////

                  StatefulBuilder(
                    builder: (context,setState) {
                      return Slider(
                        activeColor: offWhite,
                        inactiveColor: offWhite,
                       divisions: 500,
                        label: sliderValue.toInt().toString(),
                        min: 1000,
                        max: 70000,
                        value: sliderValue,
                        onChanged: (value) {
                          setState(
                            () {
                              sliderValue = value;
                              print(sliderValue);
                            },
                          );
                        },
                      );
                    }
                  ),
                  ShareContainer(),
                  InkWell
                  (
                    onTap: () async{
                      Navigator.pop(context);
                       bool tem1 = await creat_theker(ThekerModelll(id: "id", Date: "Date", Fullnum: sliderValue, achievment: (70000-sliderValue), proof: "", name: selectedValue2));},
                    child: bottomContainer(
                      its_child: Center(
                        child: Text(
                          "اضافة",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
