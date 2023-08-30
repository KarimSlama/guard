import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guard/core/utils/fonts/icon_broken.dart';
import 'package:guard/core/utils/theme/app_colors/app_colors.dart';
import 'package:guard/core/utils/theme/app_string/app_string.dart';
import 'package:guard/features/presentation/controller/cubit/home_layout_cubit.dart';
import 'package:guard/features/presentation/controller/states/home_layout_state.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
    // return BlocProvider(
    //   create: (context) => HomeLayoutCubit(),
    //   child: BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
    //     builder: (context, state) {
    //       var homeCubit = HomeLayoutCubit.getContext(context);
    //       return Directionality(
    //         textDirection: TextDirection.rtl,
    //         child: Scaffold(
    //           appBar: AppBar(
    //             automaticallyImplyLeading: false,
    //           ),
    //           body: homeCubit.screens[homeCubit.currentIndex],
    //           bottomNavigationBar: BottomNavigationBar(
    //               elevation: 0,
    //               backgroundColor: AppColors.white,
    //               selectedItemColor: AppColors.yellow,
    //               unselectedItemColor: AppColors.grey,
    //               onTap: (value) {
    //                 homeCubit.changeBottomNav(value);
    //               },
    //               currentIndex: homeCubit.currentIndex,
    //               items: const [
    //                 BottomNavigationBarItem(
    //                   icon: Icon(IconBroken.Home),
    //                   label: AppString.home,
    //                 ),
    //                 BottomNavigationBarItem(
    //                   icon: Icon(IconBroken.Setting),
    //                   label: AppString.settings,
    //                 ),
    //               ]),
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
