import 'dart:async';

import 'package:daoan6/Pages/components/default_button.dart';
import 'package:daoan6/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SetLocationOnMap extends StatefulWidget {
  const SetLocationOnMap({Key? key}) : super(key: key);

  @override
  State<SetLocationOnMap> createState() => _SetLocaionOnMapState();
}

class _SetLocaionOnMapState extends State<SetLocationOnMap> {

  late GoogleMapController mapController; //contrller for Google map
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation = const LatLng(27.7089427, 85.3086209);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GoogleMap( //Map widget from google_maps_flutter package
              zoomGesturesEnabled: true, //enable Zoom in, out on map
              initialCameraPosition: CameraPosition( //innital position in map
                target: showLocation, //initial position
                zoom: 10.0, //initial zoom level
              ),
              markers: this.getmarkers(), //markers to show on map
              mapType: MapType.normal, //map type
              onMapCreated: (controller) { //method called when map is created
                setState(() {
                  mapController = controller;
                });
              },
            ),
          ),
          Positioned(
            top: 0.0,
            child: Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  height: getProportionateScreenHeight(69),
                  width: getProportionateScreenWidth(330),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFFDA6317),
                          ),
                          hintText: "Fint Your Location",
                          hintStyle: TextStyle(color: Color(0xFFDA6317))),
                    ),
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(480),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  padding: EdgeInsets.all(10),
                  height: getProportionateScreenHeight(181),
                  width: getProportionateScreenWidth(330),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: getProportionateScreenHeight(10),),
                      Text("Your Location"),
                      SizedBox(height: getProportionateScreenHeight(10),),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: getProportionateScreenWidth(5),
                          ),
                          Container(
                            width: getProportionateScreenWidth(40),
                            height: getProportionateScreenHeight(40),
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(20),
                                color: Colors.yellow),
                            child: Center(
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.deepOrange,
                                )),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(10),
                          ),
                          Expanded(
                              child: Text(
                                "4517 Washington Ave.Manchester, Kentucky 39453",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ))
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(20),),
                      Container(
                        width: getProportionateScreenWidth(322),
                        height: getProportionateScreenHeight(57),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft,
                                colors: [
                                  Color(0xFF15BE77),
                                  Color(0xFF53E88B),
                                ]
                            )
                        ),
                        child: Center(
                          child: Text(
                            "Set Location",
                            style: TextStyle(
                              fontSize: getProportionateScreenWidth(18),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
  Set<Marker> getmarkers() { //markers to place on map
    setState(() {
      markers.add(Marker( //add marker
        markerId: MarkerId(showLocation.toString()),
        position: showLocation, //position of marker
        infoWindow: InfoWindow( //popup info
          title: 'My Custom Title ',
          snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
    });
    return markers;
  }
}
