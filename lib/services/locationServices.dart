import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationServices with ChangeNotifier {
  Position? myPosition;

  Marker? origin, destination;
  locateMe() async {
    myPosition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    notifyListeners();
  }

  setMarker(LatLng pos) {
    if (origin == null || (origin != null && destination != null)) {
      origin = Marker(
          markerId: const MarkerId('origin'),
          infoWindow: const InfoWindow(title: 'Origin'),
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position: pos);
      destination = null;
    } else {
      destination = Marker(
          markerId: const MarkerId('origin'),
          infoWindow: const InfoWindow(title: 'Origin'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: pos);
    }

    notifyListeners();
  }
}
