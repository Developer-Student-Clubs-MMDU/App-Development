import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  String widName = "BODY";

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      widName = "BOTTOM NAVIGATION BAR";
    });
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,

      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            setState(() {
              widName = "APP BAR : TITLE";
            });
          },
          child: const Text('SCAFFOLD'),
        ),
        backgroundColor: Colors.purple,
        elevation: 10,
        toolbarHeight: 70,
        leading: IconButton(
          icon: const Icon(
            Icons.favorite_border,
            color: Colors.yellowAccent,
            size: 26,
          ),
          onPressed: () {
            setState(() {
              widName = "APP BAR : LEADING ICON";
            });
          },
        ),
        shadowColor: Colors.black,
        titleTextStyle: const TextStyle(
          color: Colors.yellowAccent,
          fontSize: 25,
          fontWeight: FontWeight.w400,
          letterSpacing: 3.5,
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    widName = "APP BAR : ACTION ICON 1";
                  });
                },
                child: const Icon(
                  Icons.search,
                  color: Colors.yellowAccent,
                  size: 26,
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  _key.currentState!.openEndDrawer();
                  setState(() {
                    widName = "APP BAR : ACTION ICON 2";
                  });
                },
                child: const Icon(
                  Icons.menu,
                  color: Colors.yellowAccent,
                  size: 26,
                ),
              )),
        ],
      ),

      backgroundColor: Colors.grey.shade900,

      body: GestureDetector(
        onTap: () {
          setState(() {
            widName = "BODY";
          });
        },
        child: Container(
          margin: const EdgeInsets.all(30),
          alignment: Alignment.center,
          color: Colors.transparent,
          child: Text(
            widName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.yellowAccent,
              fontSize: 30,
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.yellow,
        backgroundColor: Colors.purple,
        onPressed: () {
          setState(() {
            widName = "FLOATING ACTION BUTTON";
          });
        },
        child: const Icon(Icons.add),
      ),

      endDrawer: Drawer(
        width: 200,
        backgroundColor: Colors.grey.shade800,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'END DRAWER HEADER',
                style: TextStyle(
                  color: Colors.yellowAccent,
                  fontSize: 25,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Screen 1',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Screen 2',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 20,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline, size: 30),
            label: 'Mail',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30),
            label: 'Settings',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
