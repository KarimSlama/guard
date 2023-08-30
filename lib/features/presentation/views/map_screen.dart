import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guard/core/utils/service_locator/service_locator.dart';
import 'package:guard/features/presentation/controller/cubit/map_cubit.dart';
import 'package:guard/features/presentation/controller/states/map_state.dart';
import 'package:guard/features/presentation/widgets/build_map_widget.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MapCubit>(),
      child: BlocBuilder<MapCubit, MapState>(
        builder: (context, state) {
          MapCubit.getContext(context).getCurrentLocation();
          return Scaffold(
            body: Stack(
              children: [
                MapCubit.position != null
                    ? const BuildMapWidget()
                    : const Center(child: CircularProgressIndicator()),
              ],
            ),
          );
        },
      ),
    );
  }
}
