import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  final height;
  final width;
  final controller;

  MapScreen({super.key, this.height, this.width, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height * .3,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
      child: Obx(() {
        return ClipRRect(
          child: Stack(
            children: [
              GoogleMap(
                mapType: MapType.normal,
                myLocationEnabled: true,
                myLocationButtonEnabled: false,
                zoomControlsEnabled: false,
                initialCameraPosition: CameraPosition(
                  target: controller.currentPosition.value,
                  zoom: 17,
                ),
                onMapCreated: controller.onMapCreated,
                markers: {
                  Marker(
                    markerId: const MarkerId("current"),
                    position: controller.currentPosition.value,
                    infoWindow: const InfoWindow(title: "موقعي الحالي"),
                  ),
                },
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: width,
                  height: height * .25,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(15, 255, 145, 0),
                        spreadRadius: 150,
                        blurRadius: 150,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
