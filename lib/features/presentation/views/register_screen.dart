import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guard/core/utils/cached/cache_helper.dart';
import 'package:guard/core/utils/constants/constant.dart';
import 'package:guard/core/utils/service_locator/service_locator.dart';
import 'package:guard/core/utils/theme/app_colors/app_colors.dart';
import 'package:guard/core/utils/theme/app_string/app_string.dart';
import 'package:guard/features/data/models/user_parameters.dart';
import 'package:guard/features/presentation/controller/cubit/register_cubit.dart';
import 'package:guard/features/presentation/controller/states/register_state.dart';
import 'package:guard/features/presentation/views/deadline_registration_screen.dart';
import 'package:guard/features/presentation/views/login_screen.dart';
import 'package:guard/features/presentation/widgets/text_form_text_component.dart';
import 'package:icon_broken/icon_broken.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();
    var passwordController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BlocProvider(
        create: (context) => getIt<RegisterCubit>(),
        child: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if (state is LoginStateSuccess) {
              CacheHelper.saveData(key: 'uId', value: state.uId).then((value) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DeadlineRegistrationScreen(),
                    ));
              });
              Constant.uId = CacheHelper.getData(key: 'uId');
            }
          },
          builder: (context, state) {
            var registerCubit = RegisterCubit.getContext(context);
            return Scaffold(
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
                                AppString.register,
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
                            AppString.addYourPersonalInfo,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.w600, fontSize: 22),
                          ),
                          const SizedBox(height: 70),
                          textForm(
                            inputType: TextInputType.name,
                            controller: nameController,
                            label: AppString.name,
                            prefixIcon: IconBroken.Profile,
                            validate: (value) {
                              if (value!.isEmpty) {
                                return AppString.mustNotBeEmpty;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 30),
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
                          const SizedBox(height: 30),
                          textForm(
                            inputType: TextInputType.phone,
                            controller: phoneController,
                            label: AppString.phone,
                            prefixIcon: IconBroken.Call,
                            validate: (value) {
                              if (value!.isEmpty) {
                                return AppString.mustNotBeEmpty;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 30),
                          textForm(
                            inputType: TextInputType.visiblePassword,
                            controller: passwordController,
                            label: AppString.password,
                            prefixIcon: IconBroken.Password,
                            isPassword: registerCubit.isPassword,
                            suffixIcon: registerCubit.suffix,
                            suffixPressed: () {
                              registerCubit.changePasswordVisibility();
                            },
                            validate: (value) {
                              if (value!.isEmpty) {
                                return AppString.mustNotBeEmpty;
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 30),
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
                                  registerCubit
                                      .registerUser(
                                        UserParameters(
                                          email: emailController.text,
                                          userName: nameController.text,
                                          password: passwordController.text,
                                          phone: phoneController.text,
                                        ),
                                      )
                                      .then((value) => {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const DeadlineRegistrationScreen(),
                                              ),
                                            ),
                                          });
                                }
                              },
                              child: Text(
                                AppString.createAnAccount,
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
                          const SizedBox(height: 30),
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
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
            );
          },
        ),
      ),
    );
  }
}
