import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:transmyt/screens/launcher.dart';
import 'package:transmyt/utilities/theme.dart';

void main() {
  runApp(const TransmytRoot());
}

class TransmytRoot extends StatelessWidget {
  const TransmytRoot({super.key});

   @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Transmyt',
          theme: lightMode,
          home: const Launcher());
    });
  }
}
