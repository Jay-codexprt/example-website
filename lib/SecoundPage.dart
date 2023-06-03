import 'package:flutter/material.dart';
import 'package:nikunj/postionCell.dart';
import 'package:nikunj/Model.dart';

class SecondPage extends StatefulWidget {

  List<SetData>? setDataInList = [];

  SecondPage({
    Key? key,
    this.setDataInList,
  }) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(225, 226, 226, 1.0),
      body: Stack(
        children: [
          Container(
            height: 125,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(131, 50, 203, 1.0),
                  Color.fromRGBO(83, 37, 150, 0.9647058823529412),
                  Color.fromRGBO(54, 25, 97, 1),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.only(
                      top: 43.0,
                      left: 13.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        50.0,
                      ),
                      border: Border.all(
                        width: 1.5,
                        color: const Color.fromRGBO(166, 157, 182, 10),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        50.0,
                      ),
                      child: Image.asset(
                        "assets/images/profile.png",
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 80.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 15.0),
                            alignment: Alignment.centerLeft,
                            child: Container(
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 2.5,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              child: Container(
                                margin: const EdgeInsets.only(
                                  top: 40.0,
                                ),
                                child: const Text(
                                  "Positions",
                                  textScaleFactor: 1,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // Column(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Container(
                          //       margin: EdgeInsets.only(top: 15.0),
                          //       alignment: Alignment.centerLeft,
                          //       child: const Text(
                          //         "Positions",
                          //         textScaleFactor: 1,
                          //         style: TextStyle(
                          //           color: Colors.white,
                          //           fontSize: 20.0,
                          //           fontWeight: FontWeight.bold,
                          //           height: 1.5,
                          //         ),
                          //       ),
                          //     ),
                          //     Container(
                          //       child: Text(
                          //         "_______________",
                          //         style: TextStyle(
                          //           color: Colors.white,
                          //           fontWeight: FontWeight.bold,
                          //         ),
                          //       ),
                          //     )
                          //   ],
                          // ),
                          Container(
                            alignment: Alignment.center,
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 40.0,
                                left: 15.0,
                              ),
                              child: const Text(
                                "Holdings",
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: Color.fromRGBO(164, 141, 199, 1),
                                  fontSize: 16.0,
                                  height: 1.5,
                                ),
                              ),
                            ),

                            // const Text(
                            //   "Holdings",
                            //   textScaleFactor: 1,
                            //   style: TextStyle(
                            //     color: Color.fromRGBO(164, 141, 199, 1),
                            //     fontSize: 17.0,
                            //     height: 1.5,
                            //   ),
                            // ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 40.0,
                                left: 15.0,
                              ),
                              child: const Text(
                                "Margin",
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: Color.fromRGBO(164, 141, 199, 1),
                                  fontSize: 16.0,
                                  height: 1.5,
                                ),
                              ),
                            ),

                            //
                            // const Text(
                            //   "Margin",
                            //   textScaleFactor: 1,
                            //   style: TextStyle(
                            //     color: Color.fromRGBO(164, 141, 199, 1),
                            //     fontSize: 17.0,
                            //     height: 1.5,
                            //   ),
                            // ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 40.0,
                                left: 15.0,
                              ),
                              child: const Text(
                                "Funds",
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: Color.fromRGBO(164, 141, 199, 1),
                                  fontSize: 16.0,
                                  height: 1.5,
                                ),
                              ),
                            ),

                            // const Text(
                            //   "Funds",
                            //   textScaleFactor: 1,
                            //   style: TextStyle(
                            //     color: Color.fromRGBO(164, 141, 199, 1),
                            //     fontSize: 17.0,
                            //     height: 1.5,
                            //   ),
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
                height: 60.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(
                              left: 13.0,
                            ),
                            child: const Text(
                              "Overall P&L",
                              textScaleFactor: 1,
                              style: TextStyle(
                                color: Color.fromRGBO(154, 152, 152, 20),
                                fontSize: 10.0,
                                height: 1.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            right: 13.0,
                            top: 3.0,
                          ),
                          child: Image.asset(
                            "assets/images/down-button.png",
                            height: 23,
                            width: 23,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 13.0,
                          ),
                          child: const Text(
                            "₹ ",
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 117, 0, 100),
                              fontSize: 17.0,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 6.0,
                          ),
                          child: const Text(
                            "17",
                            textScaleFactor: 1,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 117, 0, 100),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 6.0,
                          ),
                          child: const Text(
                            ".50",
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: Color.fromRGBO(0, 117, 0, 100),
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 6.0, left: 5.0),
                          child:  Text(
                            "on ${widget.setDataInList?.length} positions",
                            style: TextStyle(
                              color: Color.fromRGBO(115, 114, 112, 100),
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20.0, top: 22.0),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          2.0,
                        ),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(99, 52, 164, 50),
                          Color.fromRGBO(99, 52, 164, 10),
                          Color.fromRGBO(54, 25, 97, 1),
                        ],
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            right: 5.0,
                            top: 5.0,
                            bottom: 5.0,
                          ),
                          child: const Text(
                            "All",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                2.0,
                              ),
                            ),
                            color: Colors.white,
                          ),
                          margin: const EdgeInsets.only(
                            left: 3.0,
                            right: 8.0,
                          ),
                          padding: const EdgeInsets.only(
                            left: 6.0,
                            right: 4.0,
                            top: 2.0,
                            bottom: 1.0,
                          ),
                          child:  Text(
                            "${widget.setDataInList?.length}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10.0,
                      top: 22.0,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          2.0,
                        ),
                      ),
                      color: Color(0x6dbcb7b7),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                        top: 5.0,
                        bottom: 5.0,
                      ),
                      child: const Text(
                        "In profits",
                        style: TextStyle(
                          color: Color.fromRGBO(121, 121, 121, 1),
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10.0,
                      top: 22.0,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          2.0,
                        ),
                      ),
                      color: Color(0x6dbcb7b7),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                        right: 10.0,
                        top: 5.0,
                        bottom: 5.0,
                      ),
                      child: const Text(
                        "in Loss",
                        style: TextStyle(
                          color: Color.fromRGBO(121, 121, 121, 1),
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 22.0, right: 10.0),
                        child: Container(
                          child: Image.asset(
                            "assets/images/list.png",
                            height: 25,
                            width: 25,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 22.0,
                          right: 15.0,
                        ),
                        child: Container(
                          child: Image.asset(
                            "assets/images/transScan.png",
                            height: 18,
                            width: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 30.0, left: 20.0),
                child: Container(
                  child: Text(
                    "Closed Positions",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color.fromRGBO(115, 114, 112, 100),
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                    bottom: 140.0,
                  ),
                  child: ListView.builder(
                    itemCount: widget.setDataInList?.length,
                    itemBuilder: (context, index) {
                      return PositionCell(
                        setListData: widget.setDataInList?[index],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                child: Container(
                  height: 50.0,
                  width: 150.0,
                  margin: EdgeInsets.only(
                    bottom: 90.0,
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.0),
                            bottomLeft: Radius.circular(5.0),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color.fromRGBO(131, 50, 203, 100),
                              Color.fromRGBO(83, 37, 150, 35),
                              Color.fromRGBO(54, 25, 97, 1),
                            ],
                          ),
                        ),
                        height: 35.0,
                        width: 35.0,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 25.0,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 35.0,
                        padding: EdgeInsets.all(10.0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(5.0),
                            bottomRight: Radius.circular(5.0),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 1.0),
                              Color.fromRGBO(255, 255, 255, 1.0),
                            ],
                          ),
                        ),
                        child: Text(
                          "New Position",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromRGBO(3, 3, 3, 0.615686274509804),
                            fontSize: 13.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: (){
                  Navigator.pop(context);
                },
              )
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Image.asset(
                "assets/images/footer.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
