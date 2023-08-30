abstract class RegisterState {}

class LoginStateInitial extends RegisterState {}

class LoginStateLoading extends RegisterState {}

class LoginStateSuccess extends RegisterState {
  final String uId;

  LoginStateSuccess(this.uId);
}

class LoginStateError extends RegisterState {
  final String error;

  LoginStateError(this.error);
}

class RegisterStateLoading extends RegisterState {}

class RegisterStateSuccess extends RegisterState {
  final String user;

  RegisterStateSuccess(this.user);
}

class RegisterStateError extends RegisterState {
  final String error;

  RegisterStateError(this.error);
}

class ResetPasswordLoadingState extends RegisterState {}

class ResetPasswordSuccessState extends RegisterState {}

class ResetPasswordErrorState extends RegisterState {}

class ChangePasswordVisibilityState extends RegisterState {}
