import 'package:equatable/equatable.dart';

class UserParameters extends Equatable {
  final String email;
  final String? password;
  final String? phone;
  final String? userName;
  final String? image;

  const UserParameters(
      {required this.email,
       this.password,
      this.phone,
      this.userName,
      this.image});

  @override
  List<Object?> get props => [email, password, phone, userName, image];
}
