import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guard/core/utils/cached/cache_helper.dart';
import 'package:guard/core/utils/constants/constant.dart';
import 'package:guard/core/utils/service_locator/service_locator.dart';
import 'package:guard/core/utils/theme/theme_data/theme_light.dart';
import 'package:guard/features/presentation/controller/observer.dart';
import 'package:guard/features/presentation/views/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  ServiceLocator().init();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  Constant.uId = CacheHelper.getData(key: 'uId');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeLight,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
