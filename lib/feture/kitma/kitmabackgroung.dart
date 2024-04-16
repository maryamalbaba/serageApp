import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:finalserage/core/colors/mycolors.dart';
import 'package:finalserage/core/components/myWidget.dart';
import 'package:finalserage/core/models/kitmaMode.dart';
import 'package:finalserage/core/services/Kitma_services/createKitma.dart';
import 'package:finalserage/core/theme/background.dart';
import 'package:finalserage/core/theme/theme.dart';
import 'package:finalserage/feture/kitma/addKitma.dart';
import 'package:finalserage/view/homePage.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class Kitmaebackground extends StatefulWidget {
  Kitmaebackground({super.key});

  @override
  State<Kitmaebackground> createState() => _KitmaebackgroundState();
}

bool isUp = false;
var results;
String selectedValue = "قضاء حاجة";
bool CheckBoxproirity = false;
bool CheckBoxfajeer = false;
var scaffoldKey = GlobalKey<ScaffoldState>();
List<DateTime?> _rangeDatePickerValueWithDefaultValue = [];

class _KitmaebackgroundState extends State<Kitmaebackground> {
  @override
  Widget build(BuildContext context) {
    return background(
      floa: FloatingActionButton(
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
            showModalBottomSheet(
                context: context,
                builder: (context) => Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                      color: browcontainer,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                            child: StatefulBuilder(
                              builder: (BuildContext context,
                                  void Function(void Function()) setState) {
                                return DropdownButton(
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
                                    });
                              },
                            ),
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
                                        if (value != null)
                                          {
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
                            onTap: () async {
                              var results = await showCalendarDatePicker2Dialog(
                                context: context,
                                config:
                                    CalendarDatePicker2WithActionButtonsConfig(),
                                dialogSize: const Size(400, 450),
                                value: _rangeDatePickerValueWithDefaultValue,
                                borderRadius: BorderRadius.circular(10),
                              );
                              CalendarDatePicker2(
                                config: CalendarDatePicker2Config(
                                  calendarType: CalendarDatePicker2Type.range,
                                ),
                                value: _rangeDatePickerValueWithDefaultValue,
                                onValueChanged: (dates) =>
                                    _rangeDatePickerValueWithDefaultValue =
                                        dates,
                              );

                              if (results != null) {
                                setState(() {
                                  _rangeDatePickerValueWithDefaultValue =
                                      results;
                                  DateTime? startDate =
                                      results.isNotEmpty ? results.first : null;
                                  DateTime? endDate =
                                      results.isNotEmpty ? results.last : null;
                                  EndDateController.text =
                                      '${startDate ?? ''} - ${endDate ?? ''}'; // Update the text field with the selected date range
                                });
                              }
                            },
                            KeyBoardType: TextInputType.text,
                            controller: EndDateController,
                          ),
                        ),
                        SizedBox(
                            height: 40,
                            width: 300,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Text("ذات أولوية",
                                        style: TextStyle(color: Colors.white)),
                                    StatefulBuilder(
                                      builder: (context, setState) {
                                        return Checkbox(
                                            value: CheckBoxproirity,
                                            onChanged: (value) {
                                              setState(() {
                                                CheckBoxproirity = value!;
                                              });
                                            });
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "فجرية",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    StatefulBuilder(
                                        builder: (context, setState) {
                                      return Checkbox(
                                          value: CheckBoxfajeer,
                                          onChanged: (value) {
                                            setState(() {
                                              CheckBoxfajeer = value!;
                                            });
                                          });
                                    }),
                                  ],
                                ),
                              ],
                            )),
                        Align(
                          alignment: Alignment.center,
                          child: ShareContainer(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: bottomContainer(
                              its_child: Center(
                                  child: Text(
                            "اضافة",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ))),
                        )
                      ],
                    )));
          }
        },
      ),
      isLight: Provider.of<ThemePageProvider>(context).isLighEnable,
      page: Add_Kitma_Page(),
    );
  }
}
