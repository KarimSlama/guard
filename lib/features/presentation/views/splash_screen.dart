import 'package:flutter/material.dart';
import 'package:guard/core/utils/constants/constant.dart';
import 'package:guard/core/utils/theme/app_string/app_string.dart';
import 'package:guard/features/presentation/views/deadline_registration_screen.dart';
import 'package:guard/features/presentation/views/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

late Widget widget;

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 200,
              ),
              const SizedBox(height: 30),
              Text(
                AppString.appName,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future navigateToHome() async {
    await Future.delayed(const Duration(seconds: 4), () {});
    if (Constant.uId != null) {
      widget = const DeadlineRegistrationScreen();
      print(Constant.uId);
    } else {
      widget = const LoginScreen();
      print(Constant.uId);
    }
  }

  @override
  void initState() {
    super.initState();
    navigateToHome().then((value) => {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => widget,
            ),
          )
        });
  }
}
