import 'package:flutter/material.dart';

class Earthquake extends StatefulWidget {
  @override
  _EarthquakeState createState() => _EarthquakeState();
}

class _EarthquakeState extends State<Earthquake> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Газар хөдлөлт"),
      ),
    );
  }
}
