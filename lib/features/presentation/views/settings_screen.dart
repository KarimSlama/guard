import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guard/core/utils/fonts/icon_broken.dart';
import 'package:guard/core/utils/theme/app_colors/app_colors.dart';
import 'package:guard/core/utils/theme/app_string/app_string.dart';
import 'package:guard/features/presentation/controller/cubit/home_layout_cubit.dart';
import 'package:guard/features/presentation/controller/states/home_layout_state.dart';
import 'package:guard/features/presentation/views/notification_screen.dart';
import 'package:guard/features/presentation/widgets/text_form_text_component.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();
    return Container();
    // return BlocBuilder<HomeLayoutCubit, HomeLayoutState>(
    //   builder: (context, state) {
    //     nameController.text = 'كريم سلامه';
    //     emailController.text = 'karimslama@gmail.com';
    //     phoneController.text = '01095856941';
    //     return Directionality(
    //       textDirection: TextDirection.rtl,
    //       child: Padding(
    //         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //         child: SingleChildScrollView(
    //           physics: const BouncingScrollPhysics(),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Row(
    //                 children: [
    //                   Text(
    //                     AppString.welcome,
    //                     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
    //                         fontWeight: FontWeight.w600, fontSize: 22),
    //                   ),
    //                   const Spacer(),
    //                   InkWell(
    //                     onTap: () {
    //                       Navigator.push(
    //                         context,
    //                         MaterialPageRoute(
    //                           builder: (context) => const NotificationScreen(),
    //                         ),
    //                       );
    //                     },
    //                     child: Container(
    //                       width: 50,
    //                       height: 52,
    //                       decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(10),
    //                           color: AppColors.silver),
    //                       child: const Icon(
    //                         IconBroken.Notification,
    //                         color: AppColors.darkGreyBlue,
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               const SizedBox(height: 12),
    //               Text(
    //                 'كريم',
    //                 style: Theme.of(context).textTheme.bodyMedium?.copyWith(
    //                       fontWeight: FontWeight.w800,
    //                       fontSize: 18,
    //                       color: AppColors.grey,
    //                     ),
    //               ),
    //               const SizedBox(height: 12),
    //               Row(
    //                 children: [
    //                   const Icon(IconBroken.Location, color: AppColors.grey),
    //                   const SizedBox(width: 20),
    //                   Text(
    //                     'القاهرة',
    //                     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
    //                           fontWeight: FontWeight.w600,
    //                           fontSize: 17,
    //                           color: AppColors.grey,
    //                         ),
    //                   ),
    //                 ],
    //               ),
    //               const SizedBox(height: 50),
    //               textForm(
    //                 inputType: TextInputType.name,
    //                 controller: nameController,
    //                 label: AppString.name,
    //                 prefixIcon: IconBroken.Profile,
    //                 validate: (value) {
    //                   if (value!.isEmpty) {
    //                     return AppString.mustNotBeEmpty;
    //                   }
    //                   return null;
    //                 },
    //               ),
    //               const SizedBox(height: 30),
    //               textForm(
    //                 inputType: TextInputType.phone,
    //                 controller: phoneController,
    //                 label: AppString.phone,
    //                 prefixIcon: IconBroken.Call,
    //                 validate: (value) {
    //                   if (value!.isEmpty) {
    //                     return AppString.mustNotBeEmpty;
    //                   }
    //                   return null;
    //                 },
    //               ),
    //               const SizedBox(height: 30),
    //               textForm(
    //                 inputType: TextInputType.emailAddress,
    //                 controller: emailController,
    //                 label: AppString.emailAddress,
    //                 prefixIcon: IconBroken.Message,
    //                 validate: (value) {
    //                   if (value!.isEmpty) {
    //                     return AppString.mustNotBeEmpty;
    //                   }
    //                   return null;
    //                 },
    //               ),
    //               const SizedBox(height: 30),
    //               Container(
    //                 padding: const EdgeInsetsDirectional.symmetric(
    //                     horizontal: 10, vertical: 6),
    //                 decoration: BoxDecoration(
    //                     borderRadius: BorderRadiusDirectional.circular(8),
    //                     border: Border.all(
    //                         color: AppColors.darkGreyBlue, width: 1)),
    //                 child: DropdownButton(
    //                   underline: Container(),
    //                   isExpanded: true,
    //                   icon: const Icon(IconBroken.Arrow___Down_2),
    //                   items: const [
    //                     DropdownMenuItem(
    //                       value: AppString.frontGate,
    //                       child: Text(AppString.frontGate),
    //                     ),
    //                     DropdownMenuItem(
    //                       value: AppString.backGate,
    //                       child: Text(AppString.backGate),
    //                     ),
    //                     DropdownMenuItem(
    //                       value: AppString.reception,
    //                       child: Text(AppString.reception),
    //                     ),
    //                     DropdownMenuItem(
    //                       value: AppString.cash,
    //                       child: Text(AppString.cash),
    //                     ),
    //                   ],
    //                   value: AppString.reception,
    //                   onChanged: (value) {
    //                     if (value != null) {}
    //                   },
    //                 ),
    //               ),
    //               const SizedBox(height: 30),
    //               Container(
    //                 width: double.infinity,
    //                 height: 60,
    //                 decoration: const BoxDecoration(
    //                   color: AppColors.lightGreyBlue,
    //                   borderRadius: BorderRadiusDirectional.all(
    //                     Radius.circular(5),
    //                   ),
    //                 ),
    //                 child: TextButton(
    //                   onPressed: () {},
    //                   child: Text(
    //                     AppString.save,
    //                     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
    //                           color: AppColors.white,
    //                           fontSize: 16,
    //                         ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );
  }
}
