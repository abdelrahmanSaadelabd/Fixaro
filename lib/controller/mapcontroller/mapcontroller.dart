import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapControllerX extends GetxController {
  GoogleMapController? mapController;
  var currentPosition = const LatLng(30.0444, 31.2357).obs; // القاهرة افتراضيًا
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    getCurrentLocation();
  }

  // تحديد الموقع الحالي
  Future<void> getCurrentLocation() async {
    try {
      // التحقق من الصلاحيات
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied.');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error('Location permissions are permanently denied.');
      }

      // جلب الموقع الفعلي
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      currentPosition.value = LatLng(position.latitude, position.longitude);
      isLoading.value = false;

      // تحريك الكاميرا بعد تحميل الخريطة
      if (mapController != null) {
        mapController!.animateCamera(
          CameraUpdate.newLatLngZoom(currentPosition.value, 17),
        );
      }
    } catch (e) {
      print('Error getting location: $e');
      isLoading.value = false;
    }
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
    // بعد تحميل الماب نحركها على موقعي الحالي
    mapController!.animateCamera(
      CameraUpdate.newLatLngZoom(currentPosition.value, 17),
    );
  }

  // تحديث الموقع يدويًا
  Future<void> refreshLocation() async {
    await getCurrentLocation();
    if (mapController != null) {
      mapController!.animateCamera(
        CameraUpdate.newLatLngZoom(currentPosition.value, 17),
      );
    }
  }
}
