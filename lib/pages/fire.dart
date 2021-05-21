import 'package:flutter/material.dart';

class Fire extends StatefulWidget {
  @override
  _FireState createState() => _FireState();
}

class _FireState extends State<Fire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Гал түймэр"),
      ),
    );
  }
}
