import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:guard/core/utils/helpers/location_helper.dart';
import 'package:guard/features/presentation/controller/states/map_state.dart';

class MapCubit extends Cubit<MapState> {
  MapCubit() : super(MapInitialState());

  static MapCubit getContext(context) => BlocProvider.of(context);

  static Position? position;
  static Completer<GoogleMapController> controller = Completer();

  Future<void> getCurrentLocation() async {
    await LocationHelper.detectCurrentLocation();
    position = await Geolocator.getLastKnownPosition().whenComplete(() {
      emit(MapSuccessState());
    });
  }

  static final CameraPosition currentCameraPosition = CameraPosition(
    target: LatLng(position!.latitude, position!.longitude),
    bearing: 0.0,
    tilt: 0.0,
    zoom: 20,
  );
}
