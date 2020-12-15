import 'package:flutter/material.dart';
import 'Opaity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      // OpacityClass(),
      Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top:100),
          // child: Center(child: OpacityClass()),
          // child: Center(child:StackedWidgetsDemo()),
             child: Center(child:AnimatedOpacityDemo()),
        ),
      ),
    );
  }
}
