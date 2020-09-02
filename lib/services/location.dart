import 'package:geolocator/geolocator.dart';

class Location{
  double latttude;
  double longtitude;

  Future<void> getCurrentLocation() async{
     try{
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    
    latttude = position.latitude;
    longtitude = position.longitude;



    }
    catch(e){
      print(e);
    }
  }
}