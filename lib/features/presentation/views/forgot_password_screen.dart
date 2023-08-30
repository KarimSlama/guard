import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guard/core/utils/service_locator/service_locator.dart';
import 'package:guard/core/utils/theme/app_colors/app_colors.dart';
import 'package:guard/core/utils/theme/app_string/app_string.dart';
import 'package:guard/features/data/models/user_parameters.dart';
import 'package:guard/features/presentation/controller/cubit/register_cubit.dart';
import 'package:guard/features/presentation/controller/states/register_state.dart';
import 'package:guard/features/presentation/views/deadline_registration_screen.dart';
import 'package:guard/features/presentation/views/register_screen.dart';
import 'package:guard/features/presentation/widgets/text_form_text_component.dart';
import 'package:icon_broken/icon_broken.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (context) => getIt<RegisterCubit>(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var registerCubit = RegisterCubit.getContext(context);
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
                          Text(
                            AppString.newPassword,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: AppColors.lightGreyBlue,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            AppString.checkYourEmail,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 18),
                          ),
                          const SizedBox(height: 100),
                          textForm(
                            inputType: TextInputType.emailAddress,
                            controller: emailController,
                            label: AppString.emailAddress,
                            prefixIcon: IconBroken.Message,
                            validate: (value) {
                              if (value!.isEmpty) {
                                return AppString.mustNotBeEmpty;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 50),
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
                                registerCubit.resetPassword(
                                  UserParameters(
                                    email: emailController.text,
                                  ),
                                );
                              },
                              child: Text(
                                AppString.save,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: AppColors.white,
                                      fontSize: 16,
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                AppString.alreadyHaveAnAccount,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: AppColors.lightGreyBlue,
                                      decoration: TextDecoration.underline,
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
        },
      ),
    );
  }
}
