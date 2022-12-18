import 'package:esp_app/common/constants.dart';
import 'package:flutter/material.dart';

import '../Component/Scale.dart';

class AirPressure extends StatefulWidget {
  const AirPressure({Key? key}) : super(key: key);

  @override
  State<AirPressure> createState() => _AirPressureState();
}

class _AirPressureState extends State<AirPressure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Air Pressure",
                style: TextStyle(color: Colors.white, fontSize: 50)),
            Scale(1118, 800, 1300, "hPa", 50),
          ],
        ),
      ),
    );
  }
}
