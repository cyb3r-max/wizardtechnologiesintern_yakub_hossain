import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wizardtechnologiesintern_yakub_hossain/widgets/subTableHead.dart';
import 'amount.dart';
import 'dateandIDcontainer.dart';
import 'dueColumn.dart';

class TableData extends StatelessWidget {
  const TableData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Table(
            border: TableBorder.all(width: 1, color: Colors.teal.shade300),
            columnWidths: {
              0: FractionColumnWidth(0.75),
              1: FractionColumnWidth(0.25)
            },
            children: [
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.bottom,
                    child: Column(
                      children: [
                        SubTableHead(head: "Dues"),
                        DateandIDContainer(
                            head: "Previous Date", subHead: "01 January 2022")
                      ],
                    ),
                  ),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: DuesColumn(dues: 20000))
                ],
              ),
            ]),
        Table(
            border: TableBorder.all(width: 1, color: Colors.teal.shade300),
            columnWidths: {
              0: FractionColumnWidth(0.75),
              1: FractionColumnWidth(0.25)
            },
            children: [
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.bottom,
                    child: Column(children: [
                      SubTableHead(head: "Purchase"),
                      Container(
                        color: Colors.teal.shade100,
                        child: Column(
                          children: [
                            DateandIDContainer(
                                head: "Previous Date",
                                subHead: "01 January 2022",
                                isBold: false),
                            DateandIDContainer(
                                head: "Invoice ID",
                                subHead: "5386328",
                                isBold: false),
                          ],
                        ),
                      ),
                      Table(
                        border: TableBorder.all(width: 1, color: Colors.teal),
                        columnWidths: {
                          0: FractionColumnWidth(0.75),
                          1: FractionColumnWidth(0.25)
                        },
                        children: [
                          TableRow(children: [
                            TableCell(
                              //verticalAlignment:TableCellVerticalAlignment.fill,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Test product 1",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "200 pcs x 200",
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Test product 1",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "20 pcs x 300",
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Test product 1",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "20 pcs x 200",
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                verticalAlignment:
                                    TableCellVerticalAlignment.fill,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      CustomText(dues: 40000),
                                      CustomText(dues: 6000),
                                      CustomText(dues: 4000),
                                    ],
                                  ),
                                ))
                          ]),
                          TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Discount",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "VAT",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomText(dues: 0),
                                  CustomText(dues: 0),
                                ],
                              ),
                            ))
                          ]),
                          TableRow(children: [
                            TableCell(
                              //verticalAlignment:TableCellVerticalAlignment.fill,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Grand Total",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Previous Due",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomText(dues: 50000),
                                  CustomText(dues: 20000)
                                ],
                              ),
                            ))
                          ]),
                          TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Total Amount",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Totaly Payment",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomText(dues: 70000),
                                  CustomText(dues: 40000),
                                ],
                              ),
                            ))
                          ]),
                          TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Remaining Balance",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [CustomText(dues: 30000)],
                              ),
                            ))
                          ])
                        ],
                      )
                    ]),
                  ),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: DuesColumn(dues: 30000))
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.bottom,
                    child: Column(children: [
                      SubTableHead(head: "Payment"),
                      Container(
                        color: Colors.teal.shade100,
                        child: Column(
                          children: [
                            DateandIDContainer(
                                head: "Previous Date",
                                subHead: "01 January 2022",
                                isBold: false),
                            DateandIDContainer(
                                head: "Invoice ID",
                                subHead: "5386328",
                                isBold: false),
                          ],
                        ),
                      ),
                      Table(
                        border: TableBorder.all(width: 1, color: Colors.teal),
                        columnWidths: {
                          0: FractionColumnWidth(0.75),
                          1: FractionColumnWidth(0.25)
                        },
                        children: [
                          TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Discount",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "VAT",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomText(dues: 0),
                                  CustomText(dues: 0),
                                ],
                              ),
                            ))
                          ]),
                          TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Grand Total",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Previous Due",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomText(dues: 0),
                                  CustomText(dues: 30000),
                                ],
                              ),
                            ))
                          ]),
                          TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Total Amount",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Totaly Payment",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomText(dues: 30000),
                                  CustomText(dues: 10000),
                                ],
                              ),
                            ))
                          ]),
                          TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Remaining Balance",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomText(dues: 20000),
                            ))
                          ])
                        ],
                      )
                    ]),
                  ),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: DuesColumn(dues: 20000))
                ],
              ),
              TableRow(
                children: [
                  TableCell(
                    verticalAlignment: TableCellVerticalAlignment.bottom,
                    child: Column(children: [
                      SubTableHead(head: "Return"),
                      Container(
                        color: Colors.teal.shade50,
                        child: Column(
                          children: [
                            DateandIDContainer(
                                head: "Previous Date",
                                subHead: "01 January 2022",
                                isBold: false),
                            DateandIDContainer(
                                head: "Invoice ID",
                                subHead: "5386328",
                                isBold: false),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.teal.shade50,
                            border: Border(
                              top: BorderSide(width: 1, color: Colors.teal),
                            )),
                        child: Column(
                          children: [
                            DateandIDContainer(
                                head: "Previous Date",
                                subHead: "01 January 2022",
                                isBold: false),
                            DateandIDContainer(
                                head: "Invoice ID",
                                subHead: "5386328",
                                isBold: false),
                          ],
                        ),
                      ),
                      Table(
                        border: TableBorder.all(width: 1, color: Colors.teal),
                        columnWidths: {
                          0: FractionColumnWidth(0.75),
                          1: FractionColumnWidth(0.25)
                        },
                        children: [
                          TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Discount",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "VAT",
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomText(dues: 0),
                                  CustomText(dues: 0),
                                ],
                              ),
                            ))
                          ]),
                          TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Grand Total",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Previous Due",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomText(dues: 0),
                                  CustomText(dues: 30000)
                                ],
                              ),
                            ))
                          ]),
                          TableRow(children: [
                            TableCell(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Total Amount",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("Totaly Payment",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomText(dues: 30000),
                                  CustomText(dues: 10000)
                                ],
                              ),
                            ))
                          ]),
                          TableRow(children: [
                            TableCell(
                              //verticalAlignment:TableCellVerticalAlignment.fill,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Remaining Balance",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            TableCell(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [CustomText(dues: 20000)],
                              ),
                            ))
                          ])
                        ],
                      )
                    ]),
                  ),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.fill,
                      child: DuesColumn(dues: 15000))
                ],
              ),
            ]),
        Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.teal, borderRadius: BorderRadius.circular(2)),
            padding: EdgeInsets.all(8),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add_circle,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text("Pay the Balance",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ))
      ],
    )));
  }
}
