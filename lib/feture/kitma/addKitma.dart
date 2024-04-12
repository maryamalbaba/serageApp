import 'package:finalserage/core/colors/mycolors.dart';
import 'package:finalserage/core/components/myWidget.dart';
import 'package:finalserage/core/models/kitmaMode.dart';
import 'package:finalserage/core/services/kitmaService/createKitma.dart';
import 'package:finalserage/feture/kitma/viewKitma.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

TextEditingController StartDateController = TextEditingController();
TextEditingController EndDateController = TextEditingController();

class Add_Kitma_Page extends StatefulWidget {
  Add_Kitma_Page({super.key});

  @override
  State<Add_Kitma_Page> createState() => _Add_Kitma_PageState();
}

class _Add_Kitma_PageState extends State<Add_Kitma_Page> {
  bool isUp = false;

    String selectedValue = "قضاء حاجة";
  bool CheckBoxproirity = false;
  bool CheckBoxfajeer = false;
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: View_Kitma_Page(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () async {
            if (isUp) {
              Navigator.pop(context);
              isUp = false;

              bool tem1 = await create_kitma(KitmaModel(
                  id: "id",
                  neah: selectedValue,
                  name: "",
                  isfajeer: CheckBoxfajeer,
                  startDate: StartDateController.text,
                  endDate: EndDateController.text,
                  isProiratiy: CheckBoxproirity,
                  isPrivate: false,
                  ajza: []));
            } else {
              isUp = true;
              scaffoldKey.currentState!.showBottomSheet((context) => Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                    color: browcontainer,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("النية",
                            style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.white,
                          width: 200,
                          height: 30,
                          child: DropdownButton(
                              hint: Text("اختر"),
                              value: selectedValue,
                              items: [
                                DropdownMenuItem(
                                    value: "قضاء حاجة",
                                    child: Text("قضاء حاجة")),
                                DropdownMenuItem(
                                  value: "تفريج هم",
                                  child: Text("تفريج هم"),
                                ),
                                DropdownMenuItem(
                                    value: " شفاء مريض",
                                    child: Text(" شفاء مريض")),
                                DropdownMenuItem(
                                    value: "على روح مسلم",
                                    child: Text("على روح مسلم")),
                                DropdownMenuItem(
                                    value: " تيسير أمر",
                                    child: Text(" تيسير أمر")),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              }),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "تاريخ البدء",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: WhiteTextfield(
                          onTap: () {
                            showDatePicker(
                                    context: context,
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.parse('2050-12-12'))
                                .then((value) => {
                                  if(value!=null){
                                    StartDateController.text =
                                          DateFormat.yMMMd().format(value)
                                  }
                                      
                                    });
                          },
                          KeyBoardType: TextInputType.text,
                          controller: StartDateController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("تاريخ الانتهاء",
                            style: TextStyle(color: Colors.white)),
                      ),
                     Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: WhiteTextfield(
                          onTap: () {
                            showDatePicker(
                                    context: context,
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.parse('2050-12-12'))
                                .then((value) => {
                                  if(value!=null){
                                    StartDateController.text =
                                          DateFormat.yMMMd().format(value)
                                  }
                                      
                                    });
                          },
                          KeyBoardType: TextInputType.text,
                          controller: StartDateController,
                        ),
                      ),
                      SizedBox(
                          height: 40,
                          width: 300,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("ذات أولوية",
                                  style: TextStyle(color: Colors.white)),
                              StatefulBuilder(
                               builder: (context, setState) {
                                 return
                                   Checkbox(
                                    value: CheckBoxproirity,
                                    onChanged: (value) {
                                      setState(() {
                                        CheckBoxproirity = value!;
                                      });
                                    });
                               },
                              ),
                              Text(
                                "فجرية",
                                style: TextStyle(color: Colors.white),
                              ),
                             StatefulBuilder(builder: (context,setState){
                              return  Checkbox(
                                  value: CheckBoxfajeer,
                                  onChanged: (value)
                                   {
                                  
                                    setState(() {
                                      CheckBoxfajeer = value!;
                                   
                                    });
                                  });
                             })
                            ],
                          ))
                    ],
                  )));
            }
          }),
    );
  }
}
