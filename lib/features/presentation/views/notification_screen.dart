import 'package:flutter/material.dart';
import 'package:guard/core/utils/fonts/icon_broken.dart';
import 'package:guard/core/utils/theme/app_colors/app_colors.dart';
import 'package:guard/core/utils/theme/app_string/app_string.dart';
import 'package:guard/features/presentation/widgets/notification_widget.dart';
import 'package:guard/features/presentation/widgets/separetor.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(IconBroken.Arrow___Right_2),
          ),
          title: Text(
            AppString.notification,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: AppColors.darkGreyBlue,
                ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppString.today,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: AppColors.darkGreyBlue,
                    ),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => notificationWidget(context),
                  separatorBuilder: (context, index) => separator(),
                  itemCount: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
