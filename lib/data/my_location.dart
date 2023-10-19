import 'package:geolocator/geolocator.dart';

class MyLocation {
  late double latitude;
  late double longitude;

  Future<void> getMyCurrentLocation() async{
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
      print(latitude);
      print(longitude);
    } catch(e) {
      print('There was the problem with the Internet');
    }
  }
}