import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:guard/core/utils/theme/app_colors/app_colors.dart';
import 'package:guard/core/utils/theme/app_string/app_string.dart';
import 'package:guard/features/presentation/views/home_layout.dart';
import 'package:guard/features/presentation/views/map_screen.dart';
import 'package:guard/features/presentation/widgets/text_form_text_component.dart';
import 'package:icon_broken/icon_broken.dart';

class DeadlineRegistrationScreen extends StatelessWidget {
  const DeadlineRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var locationController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(IconBroken.Arrow___Right_2),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: formKey,
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
                              ?.copyWith(
                                  color: AppColors.lightGreyBlue,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22),
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/images/gib.png',
                          width: 150,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'كريم',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(fontWeight: FontWeight.w600, fontSize: 22),
                    ),
                    // const SizedBox(height: 100),
                    // Container(
                    //   padding: const EdgeInsetsDirectional.symmetric(
                    //       horizontal: 10, vertical: 6),
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadiusDirectional.circular(8),
                    //       border: Border.all(
                    //           color: AppColors.darkGreyBlue, width: 1)),
                    //   child: DropdownButton(
                    //     underline: Container(),
                    //     isExpanded: true,
                    //     icon: const Icon(IconBroken.Arrow___Down_2),
                    //     items: const [
                    //       DropdownMenuItem(
                    //         value: AppString.attendance,
                    //         child: Text(AppString.attendance),
                    //       ),
                    //       DropdownMenuItem(
                    //         value: AppString.leave,
                    //         child: Text(AppString.leave),
                    //       ),
                    //     ],
                    //     value: AppString.leave,
                    //     onChanged: (value) {
                    //       if (value != null) {
                    //         print(value);
                    //       }
                    //     },
                    //   ),
                    // ),
                    // const SizedBox(height: 30),
                    // Container(
                    //   padding: const EdgeInsetsDirectional.symmetric(
                    //       horizontal: 10, vertical: 6),
                    //   decoration: BoxDecoration(
                    //       borderRadius: BorderRadiusDirectional.circular(8),
                    //       border: Border.all(
                    //           color: AppColors.darkGreyBlue, width: 1)),
                    //   child: DropdownButton(
                    //     underline: Container(),
                    //     isExpanded: true,
                    //     icon: const Icon(IconBroken.Arrow___Down_2),
                    //     items: const [
                    //       DropdownMenuItem(
                    //         value: AppString.frontGate,
                    //         child: Text(AppString.frontGate),
                    //       ),
                    //       DropdownMenuItem(
                    //         value: AppString.backGate,
                    //         child: Text(AppString.backGate),
                    //       ),
                    //       DropdownMenuItem(
                    //         value: AppString.reception,
                    //         child: Text(AppString.reception),
                    //       ),
                    //       DropdownMenuItem(
                    //         value: AppString.cash,
                    //         child: Text(AppString.cash),
                    //       ),
                    //     ],
                    //     value: AppString.reception,
                    //     onChanged: (value) {
                    //       if (value != null) {}
                    //     },
                    //   ),
                    // ),
                    // const SizedBox(height: 30),
                    // textForm(
                    //   inputType: TextInputType.name,
                    //   controller: locationController,
                    //   label: AppString.location,
                    //   prefixIcon: IconBroken.Location,
                    //   validate: (value) {
                    //     if (value!.isEmpty) return AppString.mustNotBeEmpty;
                    //     return null;
                    //   },
                    //   onTap: () {},
                    // ),
                    const SizedBox(height: 26),
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsetsDirectional.all(7),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.lightGrey,
                            ),
                            child: DottedBorder(
                              radius: const Radius.circular(30),
                              dashPattern: const [8, 8],
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  AppString.attendance,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          color: AppColors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/images/attendance.svg',
                          width: 30,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsetsDirectional.all(7),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.lightGrey,
                            ),
                            child: DottedBorder(
                              radius: const Radius.circular(30),
                              dashPattern: const [8, 8],
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  AppString.leave,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          color: AppColors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/images/leave.svg',
                          width: 60,
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MapScreen(),
                                ));
                          },
                          child: Container(
                            padding: const EdgeInsetsDirectional.all(7),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.lightGrey,
                            ),
                            child: DottedBorder(
                              radius: const Radius.circular(30),
                              dashPattern: const [8, 8],
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Text(
                                  AppString.location,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20,
                                          color: AppColors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SvgPicture.asset(
                          'assets/images/map.svg',
                          width: 80,
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    Container(
                      width: double.infinity,
                      height: 60,
                      decoration: const BoxDecoration(
                        color: AppColors.lightGreyBlue,
                        borderRadius: BorderRadiusDirectional.all(
                          Radius.circular(5),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeLayout(),
                              ),
                            );
                          }
                        },
                        child: Text(
                          AppString.record,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: AppColors.white,
                                    fontSize: 16,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
