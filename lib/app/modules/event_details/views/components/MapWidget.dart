import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:fun_zippy/app/utilities/extention.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../controllers/event_details_controller.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({
    super.key,
    required this.controller,
  });

  final EventDetailsController controller;

  @override
  Widget build(BuildContext context) {
    double latitude =
        double.tryParse(controller.eventDetailsModel.latitude.toString()) ?? 0;
    double longitude =
        double.tryParse(controller.eventDetailsModel.latitude.toString()) ?? 0;
    return Center(
      child: SizedBox(
        width: 100.percentWidth,
        height: 20.percentHeight,
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(latitude, longitude),
            zoom: 11.0,
          ),
          gestureRecognizers: //
              <Factory<OneSequenceGestureRecognizer>>{
            Factory<OneSequenceGestureRecognizer>(
              () => EagerGestureRecognizer(),
            ),
          },
        ),
      ),
    );
  }
}
