import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoder/geocoder.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  var locationMessage = "";
  getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position.latitude);
    print(position.longitude);
    getAddressFromCordinates(
        Coordinates(position.latitude, position.longitude));
  }

  getAddressFromCordinates(Coordinates cords) async {
    var addresses = await Geocoder.local.findAddressesFromCoordinates(cords);
    var first = addresses.first;
    print("${first.addressLine}");
    setState(() {
      locationMessage = "${first.addressLine}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Байршил"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: TextButton(
                onPressed: () {
                  getCurrentLocation();
                },
                child: Text('Байршил тогтоох'),
              ),
            ),
            Container(
              child: Text('$locationMessage'),
            ),
          ],
        ),
      ),
    );
  }
}
