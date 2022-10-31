import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:Text('Hello folks,This is screen 2',
        style: TextStyle(
          fontSize: 25
        ),)
      ),
    );
  }
}
