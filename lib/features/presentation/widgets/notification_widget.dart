import 'package:flutter/material.dart';
import 'package:guard/core/utils/fonts/icon_broken.dart';
import 'package:guard/core/utils/theme/app_colors/app_colors.dart';

Widget notificationWidget(context) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsetsDirectional.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.silver,
            ),
            child: const Icon(
              IconBroken.Voice,
              size: 25,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'رسالة نصية',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 18,
                          color: AppColors.darkGreyBlue,
                        ),
                  ),
                  const SizedBox(width: 40),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.motion_photos_pause_outlined),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(IconBroken.Play),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(IconBroken.Profile),
                  const SizedBox(width: 10),
                  Text(
                    'كريم',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 18,
                          color: AppColors.darkGreyBlue,
                        ),
                  ),
                  const SizedBox(width: 60),
                  const Icon(IconBroken.Time_Circle),
                  const SizedBox(width: 10),
                  Text(
                    '3:14 PM',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 18,
                          color: AppColors.darkGreyBlue,
                        ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
