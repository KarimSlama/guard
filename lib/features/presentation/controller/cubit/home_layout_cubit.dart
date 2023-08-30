import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guard/features/presentation/controller/states/home_layout_state.dart';
import 'package:guard/features/presentation/views/home_screen.dart';
import 'package:guard/features/presentation/views/settings_screen.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutState> {
  HomeLayoutCubit() : super(HomeInitialState());

  static HomeLayoutCubit getContext(context) => BlocProvider.of(context);

  int currentIndex = 0;

  void changeBottomNav(int index) {
    currentIndex = index;
    emit(HomeBottomNavigationState());
  }

  List<Widget> screens = [
    const HomeScreen(),
    const SettingsScreen(),
  ];
}
