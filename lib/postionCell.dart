import 'package:flutter/material.dart';
import 'package:nikunj/Model.dart';

class PositionCell extends StatelessWidget {
  SetData? setListData;

  PositionCell({
    Key? key,
    this.setListData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Selected date ...... ${double.parse(setListData?.total ?? "0")}");

    return Container(
      margin: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        bottom: 15.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            5.0,
          ),
        ),
        color: Color.fromRGBO(
          255,
          254,
          254,
          0.25098039215686274,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  child: Text(
                    "${setListData?.nameBankNifty} ${setListData?.date} ${setListData?.price} ${setListData?.callPut}",
                    style: TextStyle(
                      color: Color.fromRGBO(
                        45,
                        45,
                        45,
                        1.0,
                      ),
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                child: Text(
                  "${setListData?.total}",
                  style: TextStyle(
                    color: (double.parse(setListData?.total ?? "0") > 0)
                        ? Color.fromRGBO(0, 117, 0, 100)
                        : Color.fromRGBO(209, 73, 83, 1),
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      3.0,
                    ),
                  ),
                  color: Color.fromRGBO(68, 150, 0, 1),
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 3.0,
                    right: 3.0,
                  ),
                  padding: const EdgeInsets.only(
                    left: 4.0,
                    right: 3.0,
                    top: 2.0,
                    bottom: 2.0,
                  ),
                  child: Text(
                    "B",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(
                      137,
                      136,
                      135,
                      1.0,
                    ),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      3.0,
                    ),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 3.0,
                    right: 3.0,
                  ),
                  padding: const EdgeInsets.only(
                    left: 4.0,
                    right: 3.0,
                    top: 2.0,
                    bottom: 2.0,
                  ),
                  child: Text(
                    "${setListData?.intraDay}",
                    style: TextStyle(
                      color: Color.fromRGBO(
                        137,
                        136,
                        135,
                        1.0,
                      ),
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  child: Text(
                    "Oty : ${setListData?.qty} x ${setListData?.nce} NSE",
                    style: TextStyle(
                      color: Color.fromRGBO(
                        137,
                        136,
                        135,
                        1.0,
                      ),
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                child: Text(
                  "CLOSED",
                  style: TextStyle(
                    color: Color.fromRGBO(
                      157,
                      156,
                      155,
                      1.0,
                    ),
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
