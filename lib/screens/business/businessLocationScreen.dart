import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kirb/services/locationServices.dart';
import 'package:provider/provider.dart';

class BusinessLocationScreen extends StatelessWidget {
  Completer<GoogleMapController> _controller = Completer();

  GoogleMapController? googleMapController;

  @override
  Widget build(BuildContext context) {
    // Provider.of<LocationServices>(context).locateMe();
    return Stack(
      children: [
        Consumer<LocationServices>(
            child: Center(
              child: Text("asdfg"),
            ),
            builder: (_, location, child) {
              return GoogleMap(
                gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>[
                  new Factory<OneSequenceGestureRecognizer>(
                    () => new EagerGestureRecognizer(),
                  ),
                ].toSet(),
                myLocationEnabled: true,
                zoomGesturesEnabled: true,
                zoomControlsEnabled: true,
                mapType: MapType.normal,
                myLocationButtonEnabled: true,
                initialCameraPosition: CameraPosition(
                    target: LatLng(9.033265278543102, 38.74742750686453),
                    zoom: 14),
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                  googleMapController = controller;
                },
                markers: {
                  Marker(
                    markerId: MarkerId("businessLocation"),
                    position: LatLng(9.033265278543102, 38.74742750686453),
                    infoWindow: const InfoWindow(title: 'Business Location'),
                    icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueGreen),
                  ),
                },
                onLongPress: Provider.of<LocationServices>(context).setMarker,
              );
            }),
      ],
    );
  }
}
