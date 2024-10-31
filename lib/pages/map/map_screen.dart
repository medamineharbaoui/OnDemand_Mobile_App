
/*
import 'package:geolocator/geolocator.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapScreen extends StatefulWidget {
  //const ({Key? key}) : super(key: key);
  @override
  _MapScreenState createState() => _MapScreenState();
}


class _MapScreenState extends State<MapScreen>
{


  Completer<GoogleMapController> _googleMapController = Completer() ;
  late GoogleMapController newGoogleMapController;

  static const _Tunis = CameraPosition(
    target: LatLng(36.806496, 10.181532),
    zoom: 11.5,
  );
  late Position currentPosition;
  late GoogleMapController _googleMapController;
  var geoLocator = Geolocator() ;


  // blasset l Markers

  void locatePosition () async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    currentPosition = position ;
    LatLng latlngPosition = LatLng(position.latitude, position.longitude);
    
    CameraPosition cameraPosition = new CameraPosition(target: latlngPosition , zoom:14);
    final GoogleMapController controller = await _googleMapController;
    _googleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('              Track Your Service Provider'),
        backgroundColor: Color(0xff06D1B0),
      ),

      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _Tunis,
        onMapCreated:  (GoogleMapController controller) {


          locatePosition();

        }
        markers: {
          if (_origin != null) _origin,
          if (_destination != null) _destination
        },
       // onLongPress: _addMarker,

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme
            .of(context)
            .primaryColor,
        foregroundColor: Colors.black,
        onPressed: () {
          locatePosition();
          //_googleMapController.animateCamera(
            //  CameraUpdate.newCameraPosition(_Tunis),
            //);
        },
        child: const Icon(Icons.center_focus_strong),
      ),

    );
  }



var _origin = Marker(
  markerId: MarkerId('origin'),
  infoWindow: const InfoWindow(title: 'Origin'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
  BitmapDescriptor.hueGreen),
  //position: pos,
  );
   var _destination = Marker(
     markerId: MarkerId('destination'),
     infoWindow: const InfoWindow(title: 'Destination'),
     icon: BitmapDescriptor.defaultMarkerWithHue(
         BitmapDescriptor.hueBlue),
     //position: pos,

   );



 void _addMarker(LatLng pos) {
    if (_origin == null || (_origin != null && _destination != null)) {
      setState(() {
        _origin = Marker(
          markerId: MarkerId('origin'),
          infoWindow: const InfoWindow(title: 'Origin'),
          icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueGreen),
          position: pos,
        );
        //_destination = null;
      });
    }
    else {
      setState(() {
        _destination = Marker(
          markerId:  MarkerId('destination'),
          infoWindow: const InfoWindow(title: 'Destination'),
          icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueBlue),
          position: pos,

        );
      });
    }
  }


}
*/




import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:homejek_app/pages/map/google_map_api.dart';

class LocationTracking extends StatefulWidget {
  static String routeName = "/map_screen";
  const LocationTracking({Key? key}) : super(key: key);

  @override
  _LocationTrackingState createState() => _LocationTrackingState();
}

class _LocationTrackingState extends State<LocationTracking> {
  LatLng sourceLocation = LatLng(36.806496, 10.181532);
  LatLng destinationLatlng = LatLng(36.806489, 10.181527);

  Completer<GoogleMapController> _controller = Completer();

  Set<Marker> _marker = Set<Marker>();

  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polylineCoordinates = [];
  late PolylinePoints polylinePoints;

  late StreamSubscription<LocationData> subscription;

  LocationData? currentLocation;
  late LocationData destinationLocation;
  late Location location;

  @override
  void initState() {
    super.initState();

    location = Location();
    polylinePoints = PolylinePoints();

    subscription = location.onLocationChanged.listen((clocation) {
      currentLocation = clocation;

      updatePinsOnMap();
    });

    setInitialLocation();
  }

  void setInitialLocation() async {
    await location.getLocation().then((value) {
      currentLocation = value;
      setState(() {});
    });

    destinationLocation = LocationData.fromMap({
      "latitude": destinationLatlng.latitude,
      "longitude": destinationLatlng.longitude,
    });
  }

  void showLocationPins() {
    var sourceposition = LatLng(
        currentLocation!.latitude ?? 0.0, currentLocation!.longitude ?? 0.0);
    var destinationPosition =
    LatLng(destinationLatlng.latitude, destinationLatlng.longitude);
    _marker.add(Marker(
      markerId: MarkerId('sourcePosition'),
      position: sourceposition,
    ));
    _marker.add(
      Marker(
        markerId: MarkerId('destinationPosition'),
        position: destinationPosition,
      ),
    );
    setPolylinesInMap();
  }

  void setPolylinesInMap() async {
    var result = await polylinePoints.getRouteBetweenCoordinates(
      GoogleMapApi().url,
      PointLatLng(
          currentLocation!.latitude ?? 0.0, currentLocation!.longitude ?? 0.0),
      PointLatLng(destinationLatlng.latitude, destinationLatlng.longitude),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((pointLatLng) {
        polylineCoordinates
            .add(LatLng(pointLatLng.latitude, pointLatLng.longitude));
      });
    }
    setState(() {
      _polylines.add(Polyline(
        width: 5,
        polylineId: PolylineId('polyline'),
        color: Colors.blueAccent,
        points: polylineCoordinates,
      ));
    });
  }

  void updatePinsOnMap() async {
    CameraPosition cameraPosition = CameraPosition(
      zoom: 11.5,
      tilt: 80,
      bearing: 30,
      target: LatLng(
          currentLocation!.latitude ?? 0.0, currentLocation!.longitude ?? 0.0),
    );
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    var sourcePosition =LatLng(currentLocation!.latitude ?? 0.0, currentLocation!.longitude ?? 0.0) ;
    setState(() {
      _marker.removeWhere((marker) => marker.mapsId.value == 'sourcePosition');

      _marker.add(Marker(
        markerId: MarkerId('sourcePosition'),
        position: sourcePosition,
      ));
    });
  }

  /* tounes
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(36.806496, 10.181532),
    zoom: 11.5,
  ); */

  @override
  Widget build(BuildContext context) {
    CameraPosition initialCameraPosition = CameraPosition(
      zoom: 11.5,
      tilt: 80,
      bearing: 30,
      target: currentLocation != null ? LatLng(currentLocation!.latitude ?? 0.0,
          currentLocation!.longitude ?? 0.0)
          : LatLng(0.0, 0.0),
    );

    return currentLocation == null
        ? Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: CircularProgressIndicator(),
    )
        : SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('              Track Your Service Provider'),
          backgroundColor: Color(0xff06D1B0),
        ),
        body: GoogleMap(
          myLocationButtonEnabled: true,
          compassEnabled: true,
          markers: _marker,
          polylines: _polylines,
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: LatLng(36.806496, 10.181532),
            zoom: 11.5,
          ),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);

            showLocationPins();
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    subscription.cancel();
    super.dispose();
  }
}

