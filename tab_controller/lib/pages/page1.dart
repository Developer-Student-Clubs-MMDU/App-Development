import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child:Text('Hello folks,This is screen 1',
            style: TextStyle(
                fontSize: 25
            ),)
      ),
    );
  }
}
