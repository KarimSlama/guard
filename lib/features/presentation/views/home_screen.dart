import 'package:flutter/material.dart';
import 'package:guard/core/utils/fonts/icon_broken.dart';
import 'package:guard/core/utils/theme/app_colors/app_colors.dart';
import 'package:guard/core/utils/theme/app_string/app_string.dart';
import 'package:guard/features/presentation/views/notification_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  AppString.welcome,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w600, fontSize: 22),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: 50,
                    height: 52,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.silver),
                    child: const Icon(
                      IconBroken.Notification,
                      color: AppColors.darkGreyBlue,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'كريم',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                    color: AppColors.grey,
                  ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(IconBroken.Location, color: AppColors.grey),
                const SizedBox(width: 20),
                Text(
                  'القاهرة',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                        color: AppColors.grey,
                      ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Text(
              AppString.todayReport,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: AppColors.grey,
                  ),
            ),
            const SizedBox(height: 16),
            Material(
              elevation: 5,
              borderRadius: BorderRadiusDirectional.circular(20),
              child: SizedBox(
                width: double.infinity,
                height: 230,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            IconBroken.Location,
                            color: AppColors.darkGreyBlue,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            AppString.attendanceLocation,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 17,
                                  color: AppColors.grey,
                                ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'القاهرة',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 17,
                                  color: AppColors.grey,
                                ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsetsDirectional.only(start: 10),
                        height: 20,
                        width: .5,
                        color: AppColors.darkGreyBlue,
                      ),
                      Row(
                        children: [
                          const Icon(
                            IconBroken.Time_Circle,
                            color: AppColors.darkGreyBlue,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            '11:53 PM',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 17,
                                  color: AppColors.grey,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 28),
                      Row(
                        children: [
                          const Icon(
                            IconBroken.Location,
                            color: AppColors.darkGreyBlue,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            AppString.leaveLocation,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 17,
                                  color: AppColors.grey,
                                ),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'القاهرة',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 17,
                                  color: AppColors.grey,
                                ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsetsDirectional.only(start: 10),
                        height: 20,
                        width: .5,
                        color: AppColors.darkGreyBlue,
                      ),
                      Row(
                        children: [
                          const Icon(
                            IconBroken.Time_Circle,
                            color: AppColors.darkGreyBlue,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            '11:53 PM',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 17,
                                  color: AppColors.grey,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
