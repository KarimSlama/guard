import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:guard/core/utils/errors/exception.dart';
import 'package:guard/core/utils/errors/failure.dart';
import 'package:guard/features/data/models/user_parameters.dart';
import 'package:guard/features/data/repositories/base_user_repository.dart';

class UserRepository extends BaseUserRepository {
  @override
  Future<Either<Failure, String>> loginUser(parameters) async {
    try {
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: parameters.email,
        password: parameters.password!,
      );
      return Right(userCredential.user!.uid);
    } on ServerFailure catch (message) {
      return Left(
        ServerFailure(message: message.message.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, String>> registerUser(parameters) async {
    try {
      final UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: parameters.email,
        password: parameters.password!,
      );

      final User? user = userCredential.user;
      if (user != null) {
        await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
          'email': parameters.email,
          'name': parameters.userName,
          'password': parameters.password,
          'phone': parameters.phone,
          'image': parameters.image ?? '',
        });
        return Right(user.uid);
      } else {
        return const Left(
            ServerFailure(message: 'بيانات تسجيل الدخول خاطئة !'));
      }
    } on ServerException catch (message) {
      return Left(
          ServerFailure(message: message.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, void>> resetPassword(UserParameters parameters) async {
    try {
      var response = await FirebaseAuth.instance
          .sendPasswordResetEmail(email: parameters.email);
      return Right(response);
    } on ServerException catch (message) {
      return Left(
        ServerFailure(message: message.errorMessageModel.statusMessage),
      );
    }
  }
}
