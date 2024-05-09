// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';
//
// class GoogleMapsScreen extends StatefulWidget {
//   const GoogleMapsScreen({super.key});
//
//   @override
//   State<GoogleMapsScreen> createState() => _GoogleMapsScreenState();
// }
//
// class _GoogleMapsScreenState extends State<GoogleMapsScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(
//         title:  Text('google maps'),
//       ),
//       body: OpenStreetMapSearchAndPick(
//           initialCenter: const LatLong(15, 5),
//           buttonColor: Colors.blue,
//           buttonText: 'Set Current Location',
//           onPicked: (pickedData) {
//           })
//       // GoogleMap(initialCameraPosition: CameraPosition(
//       //     target: LatLng(37.43296265331129, -122.08832357078792)
//       // )),
//     );
//   }
// }
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MapSample extends StatefulWidget {
//   const MapSample({super.key});
//
//   @override
//   State<MapSample> createState() => MapSampleState();
// }
//
// class MapSampleState extends State<MapSample> {
//   final Completer<GoogleMapController> _controller =
//   Completer<GoogleMapController>();
//   // final Completer<GoogleMapController> _controller = Completer();
//   // final Map<String, Marker> _markers = {};
//   // List<LatLng> polylineCoordinates = [];
//   // PolylinePoints polylinePoints = PolylinePoints();
//   // Set<Polyline> polyline = {};
//   //
//   // void addMarker(LatLng position) async {
//   //   setState(() {
//   //     final marker = Marker(
//   //       markerId: const MarkerId("location"),
//   //       icon: BitmapDescriptor.defaultMarkerWithHue(
//   //         BitmapDescriptor.hueRed,
//   //       ),
//   //       position: position,
//   //     );
//   //     _markers["location"] = marker;
//   //   });
//   //   getAddress(LatLng(position.latitude, position.longitude));
//   // }
//   // void getAddress(LatLng position) async {
//   //   List<Address> placemarks = await placemarkFromCoordinates(
//   //     position.latitude,
//   //     position.longitude,
//   //   );
//   //   if (placemarks.isNotEmpty) {
//   //     Placemark address = placemarks[0];
//   //     String myAddress =
//   //         "${address.street}, ${address.locality}, ${address.administrativeArea}, ${address.country}";
//   //     print(myAddress);
//   //   }
//   // }
//   // // void getAddress(LatLng position) async {
//   // //   Address address = await geoCode.reverseGeocoding(
//   // //     latitude: position.latitude,
//   // //     longitude: position.longitude,
//   // //   );
//   // //   latitude = position.latitude;
//   // //   longitude = position.longitude;
//   // //   myAddress =
//   // //   "${address.streetNumber}, ${address.streetAddress}, ${address.city}, ${address.region}, ${address.countryName}";
//   // // }
//   // void markersList() async {
//   //   BitmapDescriptor icon = await BitmapDescriptor.fromAssetImage(
//   //       const ImageConfiguration(devicePixelRatio: 3.0),
//   //       'assets/images/marker.png');
//   //   for (var i = 0; i < nearbyLocation.length; i++) {
//   //     setState(() {
//   //       final marker = Marker(
//   //         markerId: MarkerId(nearbyLocation[i].toString()),
//   //         icon: icon,
//   //         position: nearbyLocation[i],
//   //
//   //       );
//   //       _markers[nearbyLocation[i].toString()] = marker;
//   //     });
//   //   }
//   // }
//   // void setPolyline() async {
//   //   PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
//   //     'AIzaSyAtHSDd-jAFuhWwxDA1NDHeL2RL3XCLKZY',
//   //     PointLatLng(37.7749, -122.4194),
//   //     PointLatLng(37.7749, -122.4194),
//   //     // PointLatLng(origin!.latitude, origin!.longitude),
//   //     // PointLatLng(widget.data['lat'], widget.data['lon']),
//   //   );
//   //   if (result.status == 'OK') {
//   //     for (var point in result.points) {
//   //       polylineCoordinates.add(LatLng(point.latitude, point.longitude));
//   //     }
//   //
//   //     setState(() {
//   //       polyline.add(Polyline(
//   //         polylineId: const PolylineId('polyline'),
//   //         width: 10,
//   //         color: Colors.red,
//   //         points: polylineCoordinates,
//   //       ));
//   //     });
//   //   } else {}
//   // }
//   //
//   //
//
//
//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 14.4746,
//   );
//
//   static const CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(37.43296265331129, -122.08832357078792),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         mapType: MapType.hybrid,
//         initialCameraPosition: _kGooglePlex,
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: _goToTheLake,
//         label: const Text('To the lake!'),
//         icon: const Icon(Icons.directions_boat),
//       ),
//     );
//   }
//
//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }
class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng initialPosition = const LatLng(37.7749, -122.4194); // Initial map position (San Francisco, CA)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Example'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: initialPosition,
          zoom: 12.0,
        ),
        onMapCreated: (GoogleMapController controller) async{
          mapController = controller;
        },
      ),
    );
  }
}