import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transmyt/Screens/launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Sizer(builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return const Launcher();
      }),
    );
  }
}
