import 'package:flutter/material.dart';
import 'package:tab_controller/pages/page1.dart';
import 'package:tab_controller/pages/page2.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff00B48B),
        title: Center(
          child: Text('Tab Controller'),
        ),
      ),
      body: Column(
        children: [
          TabBar(
            isScrollable: true,
            indicatorPadding: EdgeInsets.all(10),
            labelColor: Color(0xff00B48B),
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 30),
            labelPadding:
                EdgeInsets.only(left: 35, right: 35, top: 15, bottom: 15),
            controller: _tabController,
            indicatorColor: Color(0xff00B48B),
            tabs: [
              Text('Page 1'),
              Text('Page 2'),
            ],
          ),
          Container(
            height: size.height * .52,
            //color: Colors.amber,
            child: TabBarView(
                controller: _tabController, children: [Page1(), Page2()]),
          ),
        ],
      ),
    );
  }
}
