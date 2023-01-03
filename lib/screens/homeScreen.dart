import 'package:flutter/material.dart';
import 'package:wizardtechnologiesintern_yakub_hossain/widgets/drawer.dart';
import 'package:wizardtechnologiesintern_yakub_hossain/widgets/tableData.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (builder) {
            return IconButton(
                onPressed: () => Scaffold.of(builder).openDrawer(),
                icon: Icon(Icons.menu));
          },
        ),
        title: Text("Table Data"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      drawer: CustomDrawer(),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: TableData(),
      ),
    );
  }
}
