import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guard/features/data/models/user_parameters.dart';
import 'package:guard/features/data/repositories/user_repository.dart';
import 'package:guard/features/presentation/controller/states/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final UserRepository userRepository;

  RegisterCubit(this.userRepository) : super(LoginStateInitial());

  static RegisterCubit getContext(context) => BlocProvider.of(context);

  Future<void> registerUser(UserParameters parameters) async {
    emit(RegisterStateLoading());

    var result = await userRepository.registerUser(
      UserParameters(
        email: parameters.email,
        password: parameters.password,
        phone: parameters.phone,
        userName: parameters.userName,
      ),
    );
    result.fold((left) {
      emit(RegisterStateError(left.message));
    }, (right) {
      emit(RegisterStateSuccess(right));
    });
  }

  Future<void> loginUser(UserParameters parameters) async {
    emit(LoginStateLoading());
    var result = await userRepository.loginUser(
      UserParameters(
        password: parameters.password,
        email: parameters.email,
      ),
    );
    print(result);
    result.fold((left) {
      emit(LoginStateError(left.message.toString()));
      print('the error with login is: ${left.message.toString()}');
    }, (right) {
      emit(LoginStateSuccess(right));
    });
  }

  Future<void> resetPassword(UserParameters parameters) async {
    emit(ResetPasswordLoadingState());
    final result = await userRepository.resetPassword(parameters);
    result.fold((left) {
      emit(ResetPasswordErrorState());
    }, (right) {
      emit(ResetPasswordSuccessState());
    });
  }

  bool isPassword = true;
  IconData suffix = Icons.remove_red_eye_outlined;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix = isPassword
        ? Icons.remove_red_eye_outlined
        : Icons.visibility_off_outlined;
    emit(ChangePasswordVisibilityState());
  }
}
