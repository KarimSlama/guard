import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:guard/features/presentation/controller/cubit/map_cubit.dart';
import 'package:guard/features/presentation/controller/states/map_state.dart';

///TODO: Maybe change that to be as a stlesswidget
class BuildMapWidget extends StatelessWidget {
  const BuildMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MapCubit, MapState>(
        builder: (context, state) {
          return GoogleMap(
            mapType: MapType.normal,
            myLocationEnabled: true,
            zoomControlsEnabled: true,

            /// TODO: maybe crash with this line
            initialCameraPosition: MapCubit.currentCameraPosition,
            onMapCreated: (controller) {
              MapCubit.controller.complete(controller);
            },
          );
        },
      ),
    );
  }
}
