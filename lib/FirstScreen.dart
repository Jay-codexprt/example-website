import 'package:flutter/material.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:intl/intl.dart';
import 'package:nikunj/Model.dart';
import 'package:nikunj/SecoundPage.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var results;
  String dateShow = "date";
  String selectNifty = "Select Nifty";
  String selectCallPut = "Select Call / Put";
  String selectInterDay = "Select";

  bool showNifty = false;
  bool showCallPut = false;
  bool show = false;

  List<String> listOfNifty = [
    "BANKNIFTY",
    "NIFTY",
    "FINNIFTY",
  ];

  List<String> listOfCallPut = [
    "PUT",
    "CALL",
  ];

  List<String> listOfInterDay = [
    "Intraday",
    "Carray Forward",
  ];

  List<SetData> setDataArray = [];

  var textDateController = TextEditingController();
  var textPriceController = TextEditingController();

  var textQtyController = TextEditingController();
  var textNseController = TextEditingController();
  var textTotalPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.50,
                      color: const Color(
                        0xFFE8E,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amberAccent,
                  ),
                  margin: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 40.0,
                  ),
                  child: TextField(
                    controller: textPriceController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFC7CAD9),
                          width: 0.7,
                        ),
                      ),
                      border: OutlineInputBorder(),
                      isDense: true,
                      hintText: "Price",
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.50,
                            color: const Color(
                              0xFFE8E,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amberAccent,
                        ),
                        margin: EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 40.0,
                        ),
                        child: TextField(
                          controller: textQtyController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFC7CAD9),
                                width: 0.7,
                              ),
                            ),
                            border: OutlineInputBorder(),
                            isDense: true,
                            hintText: "Qty",
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      child: Text(
                        "X",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.50,
                            color: const Color(
                              0xFFE8E,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.amberAccent,
                        ),
                        margin: EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 40.0,
                        ),
                        child: TextField(
                          controller: textNseController,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFC7CAD9),
                                width: 0.7,
                              ),
                            ),
                            border: OutlineInputBorder(),
                            isDense: true,
                            hintText: "Nse",
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.50,
                      color: const Color(
                        0xFFE8E,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amberAccent,
                  ),
                  margin: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 40.0,
                  ),
                  child: TextField(
                    controller: textTotalPriceController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFC7CAD9),
                          width: 0.7,
                        ),
                      ),
                      border: OutlineInputBorder(),
                      isDense: true,
                      hintText: "Total",
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.50,
                      color: const Color(
                        0xFFE8E,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amberAccent,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    top: 30.0,
                    right: 20,
                    bottom: 0,
                  ),
                  child: InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 10.0),
                      child: (dateShow.isNotEmpty)
                          ? Text(
                              "$dateShow",
                              style: TextStyle(fontSize: 17.0),
                            )
                          : Text(
                              "date",
                              style: TextStyle(fontSize: 17.0),
                            ),
                    ),
                    onTap: () async {
                      print("OntAp ---> ");
                      results = await showCalendarDatePicker2Dialog(
                        context: context,
                        config: CalendarDatePicker2WithActionButtonsConfig(
                          selectedDayHighlightColor: const Color(0xFF5031A9),
                          calendarType: CalendarDatePicker2Type.single,
                        ),
                        dialogSize: const Size(325, 400),
                        initialValue: [DateTime.now()],
                        borderRadius: BorderRadius.circular(15),
                      );
                      var date = results?.first;
                      if (date != null) {
                        setState(() {
                          dateShow = DateFormat('dd MMM').format(date);
                          print("Data .... $dateShow");
                        });
                      }
                    },
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.50,
                      color: const Color(
                        0xFFE8E,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amberAccent,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    top: 30.0,
                    right: 20,
                    bottom: 0,
                  ),
                  child: InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 10.0),
                      child: (selectNifty.isNotEmpty)
                          ? Text(
                              "$selectNifty",
                              style: TextStyle(fontSize: 17.0),
                            )
                          : Text(
                              "selectNifty",
                              style: TextStyle(fontSize: 17.0),
                            ),
                    ),
                    onTap: () async {
                      setState(() {
                        showNifty = !showNifty;
                      });
                    },
                  ),
                ),
                (showNifty == true)
                    ? Container(
                        height: 100.0,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.50,
                            color: const Color(
                              0xFFE8E,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueAccent,
                        ),
                        margin: const EdgeInsets.only(
                          left: 30,
                          top: 10.0,
                          right: 30,
                          bottom: 0,
                        ),
                        child: ListView.builder(
                            itemCount: listOfNifty.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    showNifty = !showNifty;
                                    var selectNi = listOfNifty[index];
                                    if (selectNi != null) {
                                      selectNifty = selectNi;
                                    }
                                    print("selectNi ..... ${selectNi}");
                                    print("selectNifty ..... ${selectNifty}");
                                  });
                                },
                                child: Container(
                                  margin:
                                      EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: (listOfNifty.isNotEmpty)
                                      ? Text(
                                          "${listOfNifty[index]}",
                                          style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.white),
                                        )
                                      : Text(
                                          "selectNifty",
                                          style: TextStyle(fontSize: 17.0),
                                        ),
                                ),
                              );
                            }),
                      )
                    : Container(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.50,
                      color: const Color(
                        0xFFE8E,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amberAccent,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    top: 30.0,
                    right: 20,
                    bottom: 0,
                  ),
                  child: InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 10.0),
                      child: (selectCallPut.isNotEmpty)
                          ? Text(
                              "$selectCallPut",
                              style: TextStyle(fontSize: 17.0),
                            )
                          : Text(
                              "selectNifty",
                              style: TextStyle(fontSize: 17.0),
                            ),
                    ),
                    onTap: () async {
                      setState(() {
                        showCallPut = !showCallPut;
                      });
                    },
                  ),
                ),
                (showCallPut == true)
                    ? Container(
                        height: 70.0,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.50,
                            color: const Color(
                              0xFFE8E,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueAccent,
                        ),
                        margin: const EdgeInsets.only(
                          left: 30,
                          top: 10.0,
                          right: 30,
                          bottom: 0,
                        ),
                        child: ListView.builder(
                            itemCount: listOfCallPut.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    showCallPut = !showCallPut;
                                    var selectNi = listOfCallPut[index];
                                    if (selectNi != null) {
                                      selectCallPut = selectNi;
                                    }
                                    print("selectNi ..... ${selectNi}");
                                    print("selectNifty ..... ${selectCallPut}");
                                  });
                                },
                                child: Container(
                                  margin:
                                      EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: (listOfCallPut.isNotEmpty)
                                      ? Text(
                                          "${listOfCallPut[index]}",
                                          style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.white),
                                        )
                                      : Text(
                                          "",
                                          style: TextStyle(fontSize: 17.0),
                                        ),
                                ),
                              );
                            }),
                      )
                    : Container(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.50,
                      color: const Color(
                        0xFFE8E,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amberAccent,
                  ),
                  margin: const EdgeInsets.only(
                    left: 20,
                    top: 30.0,
                    right: 20,
                    bottom: 0,
                  ),
                  child: InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 10.0),
                      child: (selectInterDay.isNotEmpty)
                          ? Text(
                              "$selectInterDay",
                              style: TextStyle(fontSize: 17.0),
                            )
                          : Text(
                              "select ",
                              style: TextStyle(fontSize: 17.0),
                            ),
                    ),
                    onTap: () async {
                      setState(() {
                        show = !show;
                      });
                    },
                  ),
                ),
                (show == true)
                    ? Container(
                        height: 70.0,
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0.50,
                            color: const Color(
                              0xFFE8E,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueAccent,
                        ),
                        margin: const EdgeInsets.only(
                          left: 30,
                          top: 10.0,
                          right: 30,
                          bottom: 0,
                        ),
                        child: ListView.builder(
                            itemCount: listOfInterDay.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    show = !show;
                                    var selectNi = listOfInterDay[index];
                                    if (selectNi != null) {
                                      selectInterDay = selectNi;
                                    }
                                    print("selectNi ..... ${selectNi}");
                                    print(
                                        "select Nifty ..... ${selectInterDay}");
                                  });
                                },
                                child: Container(
                                  margin:
                                      EdgeInsets.only(left: 10.0, top: 10.0),
                                  child: (listOfInterDay.isNotEmpty)
                                      ? Text(
                                          "${listOfInterDay[index]}",
                                          style: TextStyle(
                                              fontSize: 17.0,
                                              color: Colors.white),
                                        )
                                      : Text(
                                          "",
                                          style: TextStyle(fontSize: 17.0),
                                        ),
                                ),
                              );
                            }),
                      )
                    : Container(),
                InkWell(
                  child: Container(
                    height: 50.0,
                    width: 150,
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(
                      left: 30.0,
                      right: 30.0,
                      top: 30.0,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.50,
                        color: const Color(
                          0xFFE8E,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                    child: Text(
                      "Add",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  onTap: () {
                    SetData setItem = SetData(
                      selectNifty,
                      textQtyController.text,
                      textNseController.text,
                      textTotalPriceController.text,
                      textPriceController.text,
                      selectInterDay,
                      dateShow,
                      selectCallPut,
                    );

                    setDataArray.add(setItem);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondPage(
                            setDataInList : setDataArray,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
