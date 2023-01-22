import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Location({required this.latitude, required this.longitude});

  Future<void> getCurrentLocation() async {
    try {
      var position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } on Exception catch (e) {
      print(e);
    }
  }
}
