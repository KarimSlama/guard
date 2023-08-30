import 'package:dartz/dartz.dart';
import 'package:guard/core/utils/errors/failure.dart';
import 'package:guard/features/data/models/user_parameters.dart';

abstract class BaseUserRepository {
  Future<Either<Failure, String>> registerUser(UserParameters parameters);

  Future<Either<Failure, String>> loginUser(UserParameters parameters);

  Future<Either<Failure, void>> resetPassword(UserParameters parameters);
}
