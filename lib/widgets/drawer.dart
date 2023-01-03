import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  List drawerTitleList = ["Purchase", "Sell", "Stock/Inventory"];
  List drawerSubTitleList = [
    "Purchase List",
    "Order List",
    "VAT List",
    "Product Unit",
    "Purchase Report"
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
              height: 100,
              width: double.maxFinite,
              decoration: BoxDecoration(color: Colors.greenAccent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () => Scaffold.of(context).closeDrawer(),
                    child: Icon(
                      Icons.close_outlined,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    "Demo Limited Company",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            ExpansionTile(
              leading: Icon(Icons.shopping_cart_sharp),
              childrenPadding: EdgeInsets.only(left: 20),
              title: Text("Purchase"),
              children: <Widget>[
                for (var item in drawerSubTitleList)
                  Container(
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(width: 1, color: Colors.grey))),
                      child: ListTile(title: Text(item)))
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.shopping_bag_rounded),
              childrenPadding: EdgeInsets.only(left: 20),
              title: Text("Sell"),
            ),
            ExpansionTile(
              leading: Icon(Icons.business_outlined),
              childrenPadding: EdgeInsets.only(left: 20),
              title: Text("Stock/Inventory"),
            ),
          ],
        ),
      ),
    );
  }
}
/*Widget subTitleList(List subTitleList){
    return
}*/
