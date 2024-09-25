import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapView extends StatefulWidget {
  GoogleMapView({super.key});

  @override
  State<GoogleMapView> createState() => _GoogleMapViewState();
}

class _GoogleMapViewState extends State<GoogleMapView> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Map<PolylineId, Polyline> polylines = {};

  List<LatLng> polylineCoordinates = [];

  PolylinePoints polylinePoints = PolylinePoints();

  String googleAPiKey = "AIzaSyB2kvOckQn8vJlqi8PPnbOzK5dCf-xg3eQ";

  double _originLatitude = 33.6995, _originLongitude = 73.0363;

  double _destLatitude = 32.9425, _destLongitude = 73.7257;


  @override
  void initState() {
    _getPolyline();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Maps"),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        // markers: markers,

        polylines: Set<Polyline>.of(polylines.values),
        initialCameraPosition: const CameraPosition(
          target: LatLng(33.6995, 73.0363),
          zoom: 12.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }

  _addPolyLine() {
    PolylineId id = PolylineId("1");
    Polyline polyline = Polyline(
        polylineId: id, color: Colors.red, points: polylineCoordinates);
    polylines[id] = polyline;
    setState(() {});
  }

  _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleApiKey: googleAPiKey,
      request: PolylineRequest(
        origin: PointLatLng(_originLatitude, _originLongitude),
        destination: PointLatLng(_destLatitude, _destLongitude),
        mode: TravelMode.driving,
        wayPoints: [PolylineWayPoint(location: "Way to Jehlum")],
      ),
    );
    if (result.points.isNotEmpty) {
      result.points.map((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    _addPolyLine();
  }
}
